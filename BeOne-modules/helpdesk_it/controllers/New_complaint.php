<?php

class New_complaint extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'helpdesk_it', 'jsfiles' => array('new_complaint'));
        parent::__construct($config);
        $this->auth = $this->session->userdata('auth');
        $this->user_id = $this->auth['id'];
        $this->userlevel_id = $this->auth['userlevel_id'];
        $this->department_id = $this->auth['department_id'];
        $this->usergroup_id = $this->auth['usergroup_id'];
        $this->branchoffice_id = $this->auth['branchoffice_id'];
        $this->BeOnemdl->table = 'complaint';
    }

     /**
     * Access Page New Complaint
     */
    Public function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('New');
        // var_dump($this->branchoffice_id);
        $this->template->set('tsmall', 'Complaint');
        $this->template->set('icon', 'fa fa-film');
        $this->template->set('usergroup_id', $this->usergroup_id);
        $this->template->build('helpdesk_it/new_complaint_v');
    }

    /**
     * Ambil Data Category
     */
    function getCategory() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'complaint_category';
        $this->BeOnemdl->searchable = array('category');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "concat('[', category_code, '] ', category)");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Ambil Data Cakupan
     */
    function getCakupan() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'cakupan_complaint';
        $this->BeOnemdl->searchable = array('cakupan');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "concat('[', cakupan_code, '] ', cakupan)");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Insert New Complaint
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);

        $postData['tanggal_pengaduan'] = date('Y-m-d');
        $postData['user_id'] = $this->user_id;
        $postData['userlevel_id'] = $this->userlevel_id;
        $postData['department_id'] = $this->department_id;
        $postData['branchoffice_id'] = $this->branchoffice_id;
        $postData['complaint_status_id'] = '1';

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

        $status = $this->BeOnemdl->insert($postData);
        $id = $this->db->insert_id();
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json['msg'] = '1';
            $json['id'] = intval($id);
            echo json_encode($json);
        }
    }

    /**
     * Upload Image
     */
    public function uploadImage($id) {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        
        if (isset ($_FILES ['upload_image'] ['name']) && !empty($_FILES ['upload_image'] ['name'])) {
            $upload_path = base_url().'assets/images/foto_complaint/';
            $config['upload_path'] = '../public/assets/images/foto_complaint/';
            $config['file_name'] = $id.'-'.str_replace(' ', '_', $_FILES["upload_image"]["name"]);
            $config['allowed_types'] = 'jpg|jpeg|png';
            $config['overwrite'] = TRUE;
            $config['max_size'] = '8000';
            $this->load->library('upload',$config);
            $this->upload->initialize($config);
            
            $filex = $config['upload_path'] . $config['file_name'];
            if (!$this->upload->do_upload('upload_image')) {
                $error = array('error' => $this->upload->display_errors());
                echo $error["error"];
            } else {
                $res_config['image_library'] = 'gd2';
                $res_config['create_thumb'] = FALSE;
                $res_config['maintain_ratio'] = FALSE;
                $res_config['width'] = 760;
                $res_config['height'] = 500;
                $res_config['source_image'] = $filex;
                $this->load->library('image_lib', $res_config);
                $this->image_lib->initialize($res_config);
                if ($this->image_lib->resize()) {
                    $this->image_lib->clear();
                    $data['image_url'] = $upload_path.''.$config['file_name'];
                    $data['image_filename'] = $config['file_name'];
                    $status = $this->BeOnemdl->update($data, 'id=' . $id);
                    if ($status == 'true') {
                        $json['msg'] = '1';
                        echo json_encode($json);
                    } else {
                        $json['msg'] = $status;
                        echo json_encode($json);
                    }
                } else {
                    echo $this->image_lib->display_errors();
                }
            }
        }       
    }

    /**
     * Ambil Data Table Complaint
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_complaint';
        if ($this->usergroup_id == 2) {
            $where[0]['field'] = 'user_id';
            $where[0]['data'] = $this->user_id;
            $where[0]['sql'] = 'where';
            $cpData = $this->BeOnemdl->getDataTable($where);
        } else if ($this->usergroup_id == 3) {
            $where[0]['field'] = 'teknisi_id';
            $where[0]['data'] = $this->user_id;
            $where[0]['sql'] = 'where';
            $cpData = $this->BeOnemdl->getDataTable($where);
        } else {
            $cpData = $this->BeOnemdl->getDataTable();
        }
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Hapus Data
     */
    function delete() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = json_decode($postData['id']);
        $status = $this->BeOnemdl->delete('id', $id);
        if ($status == 'true') {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $json['msg'] = $status;
            echo json_encode($json);
        }
    }

    /**
     * Assign Complaint to Teknisi
     */
    function assignToTeknisi() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        
        $postData['complaint_status_id'] = 2;
        $id = $postData['complaint_id'];
        unset($postData['complaint_id']);

        $sql1 = $this->db->query("SELECT token FROM fcm_token WHERE user_id = '".$postData['user_id']."'")->row();
        $sql2 = $this->db->query("SELECT token FROM fcm_token WHERE user_id = '".$postData['teknisi_id']."'")->row();


        $this->BeOnemdl->table = 'complaint';
        $status = $this->BeOnemdl->update($postData, 'id=' . $id);
        if ($status == 'true') {
            $result1 = $this->push_notif($sql1->token, "Keluhan anda sedang ditangani oleh teknisi. Terima kasih");
            $result2 = $this->push_notif($sql2->token, "Anda mendapat task baru dari agent. Terima kasih");
            if ($result1 || $result2) {
                $json['msg'] = '1';
                echo json_encode($json);
            }
        } else {
            $json['msg'] = $status;
            echo json_encode($json);
        }
    }

    private function push_notif($registration_ids, $message = '') {
        $server_key = "AAAAKiOhOgU:APA91bHPKQOYMfCzyRLufzh7_WIBjI0fdxKL4dlF1FZST6d42UWuuVe3pQc-Jpr_e0_yuA-jtr553OVtGerfj0ucGHkvIx1WXFBCF3yLNvgCj36HO-0QF81vX-hTqrsIkCOkI8tNYXqX";

        $title = "Pesan baru dari Agent";
        $url = 'https://fcm.googleapis.com/fcm/send';
        $headers = array(
            'Authorization: key=' . $server_key,
            'Content-Type: application/json'
        );

        $fields = array(
            'notification' => array(
                'title' => $title,
                'body' => $message,
                'sound' => 'default',
                // 'click_action' => 'FCM_PLUGIN_ACTIVITY',
                'icon' => 'fcm_push_icon'
            ),
            'registration_ids' => array($registration_ids),
        );

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        } else {
            return $result;
        }

        curl_close($ch);

        // return array( "status" => "OK", "fcm" => $result );
    }

    /**
     * Teknisi accept assignment
     */
    function acceptAssignment() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        
        $postData['complaint_status_id'] = 3;
        $id = $postData['complaint_id'];
        unset($postData['complaint_id']);

        $this->BeOnemdl->table = 'complaint';
        $status = $this->BeOnemdl->update($postData, 'id=' . $id);
        if ($status == 'true') {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $json['msg'] = $status;
            echo json_encode($json);
        }
    }

    /**
     * Teknisi input solution
     */
    function inputSolution() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        
        $postData['complaint_status_id'] = 4;
        $id = $postData['complaint_id'];
        unset($postData['complaint_id']);

        $this->BeOnemdl->table = 'complaint';
        $status = $this->BeOnemdl->update($postData, 'id=' . $id);
        if ($status == 'true') {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $json['msg'] = $status;
            echo json_encode($json);
        }
    }
}