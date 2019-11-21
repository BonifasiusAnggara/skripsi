<?php

class Oams_private_api extends MY_Controller {
    // Public $remote_ip_address;
    public $post_data;
    public $user_data;
    private $get_asset_path = "assets/uploads/invoice_attachments/";

    // private $token_generator_key = "id.dma.user.key";
    private $token_generator_key = "7092de5ab8cb8c027159014fa07d915d97553168";

    var $token = "123456789!!!";

    function __construct() {
        parent::__construct();
        
        // $this -> remote_ip_address = $_SERVER["REMOTE_ADDR"];
        
        date_default_timezone_set("Asia/Jakarta");
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: *");
        header("Access-Control-Allow-Headers: Content-Type");
        
        $this -> load->library("utils");

        $this -> check_token();
    }

    function __destruct() {
        echo json_encode($this -> json);
    }

    private function check_token() {
        /*
         * use this token:
         * 8ae6c2280f6bbf8662324cf3659d8a0c9c0c739d
         *
         */

        $this -> load -> library("encrypt");
        $this -> post_data = $this -> get_post_data();
        if ( $this -> post_data == null ) {
            $this -> post_data = $_POST;
            if ( isset($this -> post_data["credential"]) ) {
                $this -> post_data["credential"] = json_decode($this -> post_data["credential"], true);
            } else {
                $this -> post_data["credential"] = array( "id" => -29478216371, "password" => "wj23he7823e2378djhj" );
            }
        }

        if ( ! isset($this -> post_data["token"]) ) {
            $this -> post_data["token"] = "329uem8exdy382euxws/[1pw0-190@*pd.l";
        }

        $token = $this -> post_data["token"];
        $key = $this -> token_generator_key;

        $ok = $this -> encrypt -> hash($key) === $token;
        if ( $ok ) {
            unset($this -> post_data["token"]);
            $this -> load -> model("DataModel");
            $this -> load -> model("AppModel");
            $this -> verify_user($this -> post_data);
        } else {
            $this -> json = array( "status" => "INVALID_TOKEN", "your_token" => $this -> post_data["token"] );
            exit;
        }
    }

    private function get_post_data() {
        header("Content-type: application/x-www-form-urlencoded");
        header("Content-type: application/json");
        return json_decode(file_get_contents("php://input"), true);
        // return $_POST;
    }

    private function custom_encode($string) { return strtr( $string, array( "+" => ".", "=" => "-", "/" => "~" ) ); }
    private function custom_decode($string) { return strtr( $string, array( "." => "+", "-" => "=", "~" => "/" ) ); }
    public function key() {
        $this -> load -> library("encrypt");
        $encoded = $this -> encrypt -> hash($this -> token_generator_key);
        return $this -> custom_encode($encoded);
    }
    public function key_token() { $key = $this -> key(); $this -> json = array("key" => $key); }
    public function api_token() {
        $key = $this -> key();
        $this -> load -> library("encrypt");
        $encoded = $this -> encrypt -> hash($key);
        $encoded = $this -> custom_encode($encoded);
        $this -> json = array("key" => $key, "api_token" => $encoded);
    }

    public function verify_user($data) {
        // var_dump($data["credential"]);
        if ( is_array($data) ) {
            if ( isset($data["credential"]) ) {
                $user_params = array(
                    "table" => "users",
                    "select" => "*",
                    "where" => array(
                        "id" => strtoupper($data["credential"]["id"]),
                        "m_active" => "1"
                    ),
                    "single" => true
                );
                $this -> user_data = $this -> DataModel -> get_single_data($user_params);
                if ( $this -> encrypt -> hash($data["credential"]["password"]) == $this -> user_data["password"] ) {
                    return $this -> user_data;
                } else {
                    $this -> json = array( "status" => "FORBIDDEN_USER" );
                    exit;
                }
            } else {
                $this -> json = array( "status" => "FORBIDDEN_CREDENTIAL" );
                exit;
            }
        } else {
            $this -> json = array( "status" => "FORBIDDEN_REQUEST" );
            exit;
        }
    }
    
    private function update_key($customer_id) {
        $new_key = $this -> utils->pass_encode($customer_id . date("Ymdhis"));
        $this -> db ->update("customer", array( "m_token" => $new_key ), array( "id" => $customer_id ));

        return $new_key;
    }

    public function details() {
        $this -> json = array( "status" => "OK", "data" => $this -> user_data );
    }

    public function category() {
        $params = array(
            "table" => "complaint_category",
            "select" => "id, category_code, category",
            "where" => array("status" => "1")
        );
        $data = $this -> DataModel -> get_table($params);
        $this -> json = array( "status" => "OK", "data" => $data );
    }

    public function cakupan() {
        $params = array(
            "table" => "cakupan_complaint",
            "select" => "id, cakupan_code, cakupan",
            "where" => array("status" => "1")
        );
        $data = $this -> DataModel -> get_table($params);
        $this -> json = array( "status" => "OK", "data" => $data );
    }

    public function new_complaint() {
        $postData['tanggal_pengaduan'] = date('Y-m-d');
        $postData['user_id'] = $this -> user_data['id'];
        $postData['createdby'] = $this -> user_data['id'];
        $postData['created'] = date('Y-m-d H:i:s');
        $postData['userlevel_id'] = $this -> user_data['userlevel_id'];
        $postData['department_id'] = $this -> user_data['department_id'];
        $postData['branchoffice_id'] = $this -> user_data['branchoffice_id'];
        $postData['complaint_status_id'] = '1';
        $postData['complaint'] = $this -> post_data['complaint'];
        $postData['category_id'] = $this -> post_data['categoryId'];
        $postData['cakupan_id'] = $this -> post_data['cakupanId'];

        $bobot_category = $this->db->query("SELECT bobot FROM complaint_category WHERE id = '" .$postData['category_id']. "'")->row()->bobot;
        $bobot_cakupan = $this->db->query("SELECT bobot FROM cakupan_complaint WHERE id = '" .$postData['cakupan_id']. "'")->row()->bobot;
        $bobot_userlevel = $this->db->query("SELECT bobot FROM userlevel WHERE id = '" .$postData['userlevel_id']. "'")->row()->bobot;

        $this->db->trans_begin();
        $sql = $this->db->query("SELECT MAX(count) AS max_count FROM complaint")->row();        
        if ($sql->max_count != "") {
            $new_count = intval($sql->max_count+1);
        } else {
            $new_count = 1;
        }
        $todaydate = date("ymd");
        $postData['no_tiket'] = "TRX-".$todaydate.sprintf("%06s", $new_count);
        $postData['count'] = $new_count;

        $postData['nilai_likert'] = $bobot_category+$bobot_cakupan+$bobot_userlevel;
        $status = $this-> db ->insert("complaint", $postData);
        $id = $this->db->insert_id();
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $this -> json = array( "status" => $err );
        } else {
            $this->db->trans_commit();
            $this -> json = array( "status" => $status ? "OK" : "NO" );
        }
    }






    public function calculation() {
        $branchoffice_id = $this -> post_data['BranchofficeId'];
        $monthyear = date('Y-m');
        $this -> load -> model("Dashboard");
        $data = $this -> Dashboard -> calculate($branchoffice_id);
        $this -> json = array( "status" => "OK", "data" => $data, "monthyear" => $monthyear );
    }

    public function branchoffice() {
        $params = array(
            "table" => "branchoffice",
            "select" => "id, branchofficename, shortname",
            "where" => array("status" => "1")
        );
        $data = $this -> DataModel -> get_table($params);
        $this -> json = array( "status" => "OK", "data" => $data );
    }

    public function activity_calculation() {
        $user_id = $this -> user_data["id"];
        $usergroup_id = $this -> user_data["usergroup_id"];
        $monthyear = date('Y-m');

        $callplan = $this->db->query("SELECT COUNT(id) AS total FROM oams_callplan WHERE user_id = '$user_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear'")->row();
        $call = $this->db->query("SELECT COUNT(id) AS total FROM oams_call WHERE user_id = '$user_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear'")->row();
        $uncomplete = $this->db->query("SELECT COUNT(id) AS total FROM oams_call WHERE user_id = '$user_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear' AND check_out_mobile IS NULL")->row();
        $completed = $this->db->query("SELECT COUNT(id) AS total FROM oams_call WHERE user_id = '$user_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear' AND check_out_mobile IS NOT NULL")->row();
        if ($usergroup_id == '5' ){ //kacab
            $approved = $this->db->query("SELECT COUNT(id) AS total FROM oams_call WHERE branchoffice_id = '$branchoffice_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear' AND approved = 1")->row();
        } else {
            $approved = $this->db->query("SELECT COUNT(id) AS total FROM oams_call WHERE user_id = '$user_id' AND CONVERT(VARCHAR(7), calldate, 121) = '$monthyear' AND approved = 1")->row();
        }   
        $this -> json = array(
            "status" => "OK",
            "callplan" => $callplan->total,
            "call" => $call->total,
            "uncomplete" => $uncomplete->total,
            "completed" => $completed->total,
            "approved" => $approved->total
        );
    }

    public function entry_route() {
        $cust_params = array(
            "table" => "customer",
            "select" => "id, status, branchoffice_id",
            "where" => array("customer_code" => $this -> post_data["CustCode"]),
            "single" => true,
        );
        $cust_data = $this -> DataModel -> get_single_data($cust_params);
        
        if ($cust_data == null) {
            $this->json = array( 'status' => 'CUSTOMER_NOT_FOUND' );
        } else {
            if ($cust_data["status"] != 1) {
                $this->json = array( 'status' => 'CUSTOMER_NOT_ACTIVE' );
            } else if ($cust_data["branchoffice_id"] != $this -> user_data["branchoffice_id"]) {
                $this->json = array( 'status' => 'CUSTOMER_NOT_MATCHED' );
            } else {
                $call_params = array(
                    "table" => "oams_callplan",
                    "select" => "id",
                    "where" => array(
                        "user_id" => intval($this -> user_data["id"]),
                        "usergroup_id" => intval($this -> user_data["usergroup_id"]),
                        "branchoffice_id" => $this -> user_data["branchoffice_id"],
                        "customer_id" => $cust_data["id"],
                        "calldate" => $this -> post_data["date"],
                        "createdby" => $this -> user_data["id"]
                    ),
                    "single" => true
                ); 
                $call_data = $this -> DataModel -> get_single_data($call_params);
                //var_dump($this->db->last_query()); exit;
                if ($call_data != null) {
                    $this->json = array( 'status' => 'CALLPLAN_EXIST' );
                } else {
                    $data_insert = array(
                        "user_id" => intval($this -> user_data["id"]),
                        "usergroup_id" => intval($this -> user_data["usergroup_id"]),
                        "branchoffice_id" => $this -> user_data["branchoffice_id"],
                        "customer_id" => $cust_data["id"],
                        "calldate" => $this -> post_data["date"],
                        "created" => date('Y-m-d H:i:s'),
                        "createdby" => $this -> user_data["id"]
                    );
                    $insert = $this -> db -> insert("oams_callplan", $data_insert);
                    
                    $this -> json = array(
                        "status" => $insert ? "OK" : "NO",
                        "data" => $data_insert
                    );
                }
            }            
        }
    }

    public function route() {
        $id = $this -> user_data["id"]; 
        $date = $this -> post_data["date"];
        // $date = date('Y-m-d');
        
        $params_route = array(
            "select" => "t1.id, t1.user_id, t1.calldate, t1.customer_id, t1.checked, t2.customer_code, t2.customer_name, t2.customer_phone, t1.orderplan, t2.customer_address, t2.customer_group_name, t1.branchoffice_id, branchoffice.branchofficename, users.fullname, users.usergroup_id",
            "table" => "oams_callplan as t1",
            "join" => array(
                array("branchoffice", "t1.branchoffice_id = branchoffice.id"),
                array("users", "t1.user_id = users.id"),
                array("v_customer as t2", "t1.customer_id = t2.id")
            ),
            "where" => "\"t1\".\"user_id\" = ".$id." AND \"t1\".\"calldate\" = convert(datetime, '".$date."')",
            "order" => "t1.id ASC"
        );
        $data = $this -> DataModel -> get_table($params_route);
        
        for ($i=0; $i < count($data); $i++) { 
            $data[$i]["check_in_mobile"] = $this -> DataModel -> get_single_data(array(
                "select" => "check_in_mobile",
                "table" => "oams_call",
                "where" => array( "user_id" => intval($this -> user_data["id"]),
                    "customer_id" => intval($data[$i]["customer_id"]),
                    "callplan_id" => $data[$i]["id"] )
            ));
            $data[$i]["check_out_mobile"] = $this -> DataModel -> get_single_data(array(
                "select" => "check_out_mobile",
                "table" => "oams_call",
                "where" => array( "user_id" => intval($this -> user_data["id"]),
                    "customer_id" => intval($data[$i]["customer_id"]),
                    "callplan_id" => $data[$i]["id"] )
            ));
            $data[$i]["approved"] = $this -> DataModel -> get_single_data(array(
                "select" => "approved, approve_time",
                "table" => "oams_call",
                "where" => array( "user_id" => intval($this -> user_data["id"]),
                    "customer_id" => intval($data[$i]["customer_id"]),
                    "callplan_id" => $data[$i]["id"] )
            ));
            
        }

        $this -> json = array( "status" => "OK", "data" => $data );
    }

    public function delete_route() {
        $id = $this -> post_data["routeId"];
        $query = $this->db->query("SELECT * FROM oams_callplan WHERE id = '$id'")->row();
        if ($query->checked != 1) {
            $this -> db ->delete("oams_callplan", array( "id" => $this -> post_data["routeId"] ));
            $this -> json = array( "status" => "OK" ); 
        } else {
            $this -> json = array( "status" => "ALREADY_CHECK_IN" );
        }        
    }

    public function reorder_route() {
        $id = $this -> post_data['id'];
        $user_id = $this -> user_data["id"];
        $date = date('Y-m-d H:i:s');
        $a = 0;
        for ($i = 0; $i < count($id); $i++) {
            $data = array('orderplan' => $i, 'updated' => $date, 'updatedby' => $user_id);            
            if ($this->db->update('oams_callplan', $data, array('id' => $id[$i]))) {
                $a++;
            }
        }

        if ($a > 0) {
            $this -> json = array( "status" => "OK" );
        }
    }

    public function route_detail() {
        $params_route = array(
            "select" => "t1.user_id, t1.calldate, t1.customer_id, t1.checked AS visited, t2.customer_code, t2.customer_name, t2.customer_address, t2.customer_group_name, t2.customer_phone, t1.id, t1.branchoffice_id, branchoffice.branchofficename, users.fullname, users.usergroup_id",
            "table" => "oams_callplan as t1",
            "join" => array(
                array("branchoffice", "t1.branchoffice_id = branchoffice.id"),
                array("users", "t1.user_id = users.id"),
                array("v_customer as t2", "t1.customer_id = t2.id")
            ),
            "where" => array( "t1.id" => $this -> post_data["routeId"] ),
            "single" => true
        );
        $data = $this -> DataModel -> get_single_data($params_route);
        $data["checked"] = $this -> db -> get_where("oams_call", array("user_id" => $this -> user_data["id"], "customer_id" => $data["customer_id"], "callplan_id" => $data["id"]))->result_array();
        $this -> json = array( "status" => "OK", "data" => $data );
    }

    function call_method() {
         $data = $this -> DataModel -> get_table(array(
            "select" => "id, method",
            "table" => "oams_call_method"
        ));
        
        $this -> json = array( "status" => "OK", "data" => $data );
    }

    public function checkin() {
        // $this -> json = array("status" => "OK");
        $call_data = array();
        $call_data["user_id"] = intval($this -> user_data["id"]);
        $call_data["callplan_id"] = intval($this -> post_data["id"]);
        $call_data["usergroup_id"] = intval($this -> user_data["usergroup_id"]);
        $call_data["branchoffice_id"] = intval($this -> user_data["branchoffice_id"]);
        $call_data["check_in_mobile"] = date("H:i:s", time());
        $call_data["calldate"] = date("Y-m-d");
        $call_data["status"] = "0";
        $call_data["method_id"] = $this -> post_data["methodId"];
        $call_data["customer_id"] = intval($this -> post_data["customer_id"]);
        $call_data["latitude"] = $this -> post_data["latitude"];
        $call_data["longitude"] = $this -> post_data["longitude"];
        $call_data["created"] = date('Y-m-d H:i:s');
        $call_data["createdby"] = $this -> user_data["id"];

        $check = $this -> DataModel -> get_table(array(
            "table" => "oams_call",
            "where" => array(
                "user_id" => intval($this -> user_data["id"]),
                "customer_id" => intval($this -> post_data["customer_id"]),
                "calldate" => $call_data["calldate"]
            )
        ));

        if ( count($check) < 1 ) {
            $insert_call = $this -> db -> insert("oams_call", $call_data);
            $insert_call_id = $this -> db -> insert_id();

            if ( $insert_call ) {
                $update_calplan = $this -> db -> update("oams_callplan", array("checked" => "1", "updated" => date('Y-m-d H:i:s'), "updatedby" => $this -> user_data["id"]), array("calldate" => $call_data["calldate"], "customer_id" => $this -> post_data["customer_id"]));
                $update_customer = $this -> db -> update("customer", array("latitude" => $this -> post_data["latitude"], "longitude" => $this -> post_data["longitude"], "geotag_update" => "0"), array("id" => $this -> post_data["customer_id"]));
                $this -> json = array( "status" => $update_calplan && $update_customer ? "OK" : "NO" );
            } else {
                $this -> json = array( "status" => "NO" );
            }
        } else {
            $this -> json = array( "status" => "ALREADY_CHECK_IN" );
        }
    }

}