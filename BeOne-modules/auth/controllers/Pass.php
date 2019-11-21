<?php

class Pass extends MX_Controller {

    function __construct() {
        $config = array('ignore_pass' => true, 'modules' => 'auth', 'jsfiles' => array('pass'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'users';
        $this->auth = $this->session->userdata('auth');
    }

    /**
     * Access Page Password
     */
    function index() {
        $lang = 'id'; //$this->meta->get_option( 'loginlang' );
        $cookie = array('name' => 'loginlang', 'value' => $lang, 'expire' => '86500');
        $this->input->set_cookie($cookie);
        $this->load->view('auth/pass_v');
    }

    /**
     * Update Data Password
     */
    function update() {
        checkIfNotAjax();
        $postData = $this->input->post();
        $oldpass = $this->encrypt->hash($postData['password']);
        if ($this->auth['password'] != $oldpass) {
            $json['msg'] = 'P';
            echo json_encode($json);
            exit;
        } else if ($postData['password'] == $postData['newpassword']) {
            $json['msg'] = 'S';
            echo json_encode($json);
            exit;
        } else {
            $newData['password'] = $this->encrypt->hash($postData['newpassword']);
            $newData['changepassword'] = NULL;
            $status = $this->BeOnemdl->update($newData, 'id=' . $this->auth['id']);
            if ($status == 'true') {
                $session = $this->session->userdata('auth');
                $session['changepassword'] = NULL;
                $this->session->set_userdata('auth', $session);
                $json['msg'] = '1';
                echo json_encode($json);
            } else {
                $json['msg'] = $status;
                echo json_encode($json);
            }
        }
        exit;
    }

}
