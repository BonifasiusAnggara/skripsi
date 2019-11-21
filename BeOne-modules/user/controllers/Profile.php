<?php

class Profile extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'user', 'jsfiles' => array('profile'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'user';
    }

    /**
     * Akses Halaman
     */
    function index() {
        //$this->libauth->check(__METHOD__);
        $this->template->title('User Profile');
        $this->template->set('tsmall', 'User');
        $this->template->build('user/profile_v');
    }

    /**
     * Update Data
     */
    function update() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['username'] = strtolower($postData['username']);
        if (strlen($postData['password']) > 0) {
            $postData['password'] = $this->encrypt->hash($postData['password']);
        } else {
            unset($postData['password']);
        }
        $postData = cekSelect2(array('usergroup_id'), $postData);
        $postData['status'] = cekStatus($postData);
        $id = $postData['id'];
        unset($postData['id']);
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
     * Ambil Data User
     */
    function getData() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_user';
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Upload Foto User
     */
    function upload() {
        //$this->libauth->check(__METHOD__);
        $config['upload_path'] = '../BeOne-modules/photo/user/';
        $config['allowed_types'] = 'jpg';
        $config['max_size'] = '1024';
        $config['max_width'] = '160';
        $config['max_height'] = '160';
        $config['file_name'] = key($_FILES);
        $this->load->library('upload', $config);
        $filex = $config['upload_path'] . $config['file_name'];
        @unlink($filex . ".jpg");
        if (!$this->upload->do_upload(key($_FILES))) {
            $error = array('error' => $this->upload->display_errors());
            echo $error["error"];
        } else {
            $data = array('upload_data' => $this->upload->data());
            echo "1";
        }
    }

    /**
     * Hapus Foto User
     */
    function delphoto() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $filex = '../BeOne-modules/photo/user/user-' . $postData['id'] . ".jpg";
        $status = @unlink($filex);
        if ($status) {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $json['msg'] = 'No File Deleted';
            echo json_encode($json);
        }
    }

}
