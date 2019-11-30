<?php

class Oams_private_api extends MY_Controller {
    // Public $remote_ip_address;
    public $post_data;
    public $user_data;
    private $get_asset_path = "assets/images/foto_complaint/";

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
        $postData['image_url'] = $this -> post_data['image_url'];
        $postData['image_filename'] = $this -> post_data['image_filename'];

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
        $data["id"] = $id;
        $data["no_tiket"] = $postData['no_tiket'];

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $this -> json = array( "status" => $err );
        } else {
            $this->db->trans_commit();
            $this -> json = array( "status" => $status ? "OK" : "NO", "data" => $data );
        }
    }

    public function complaints() {
        $user_id = $this -> user_data["id"];

        $complaint = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id'")->row();
        $submit = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 1")->row();
        $assigned = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 2")->row();
        $on_progress = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 3")->row();
        $pending = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 4")->row();
        $unfinished = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 5")->row();
        $finished = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 6")->row();
        $cancel = $this->db->query("SELECT COUNT(id) AS total FROM complaint WHERE user_id = '$user_id' AND complaint_status_id = 7")->row();
        $this -> json = array(
            "status" => "OK",
            "complaint" => $complaint->total,
            "submit" => $submit->total,
            "assigned" => $assigned->total,
            "on_progress" => $on_progress->total,
            "pending" => $pending->total,
            "unfinished" => $unfinished->total,
            "finished" => $finished->total,
            "cancel" => $cancel->total,
        );
    }

}