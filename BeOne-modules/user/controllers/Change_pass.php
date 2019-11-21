<?php

class Change_pass extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'user', 'jsfiles' => array('change_pass'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'users';
        $this->auth = $this->session->userdata('auth');
    }

    /**
     * Akses Halaman
     */
    function index() {
//        $this->libauth->check(__METHOD__);
        $this->template->title('Change Password');
        $this->template->set('tsmall', 'Change_pass');
        $this->template->set('icon', 'glyphicon glyphicon-user');
        $this->template->build('user/change_pass_v');
    }

    /**
     * Update Data
     */
    function update() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $this->auth['id'];
        $oldp = $this->db->select('password')->get_where('users', array('id' => $id))->row();
        if ($oldp->password != $this->encrypt->hash($postData['oldpassword'])) {
            $json['msg'] = 'Old Password Wrong';
            echo json_encode($json);
        } else {
            if (strlen($postData['password']) > 0) {
                $datax['password'] = $this->encrypt->hash($postData['password']);
                $status = $this->BeOnemdl->update($datax, 'id=' . $id);
                if ($status == 'true') {
                    $json['msg'] = '1';
                    echo json_encode($json);
                } else {
                    $json['msg'] = $status;
                    echo json_encode($json);
                }
            } else {
                $json['msg'] = 'Please set password';
                echo json_encode($json);
            }
        }
    }

}
