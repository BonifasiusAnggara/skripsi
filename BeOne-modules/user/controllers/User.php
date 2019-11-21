<?php

class User extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'user', 'jsfiles' => array('user'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'users';
        $this->auth = $this->session->userdata( 'auth' );

    }

    /**
     * Akses Halaman
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('User Management');
        $this->template->set('tsmall', 'User');
        $this->template->set('icon', 'glyphicon glyphicon-user');
        $this->template->build('user/user_v');
    }

    /**
     * Simpan Data User
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();

        $postData['username'] = trim(trim(strtolower($postData['username'])));
        $postData['password'] = $this->encrypt->hash($postData['password']);
        $postData['fullname'] = trim(trim(strtoupper($postData['fullname'])));        
        $postData = cekSelect2(array('usergroup_id'), $postData);
        $postData = cekSelect2(array('userlevel_id'), $postData);
        // $postedPeriod = Datetime::createFromFormat('m-Y-d', $postData['period'].'-'.'01');
        // $period = $postedPeriod->format('Y-m-d');
        // $postData['period'] = $period;
        $postData['status'] = cekStatus($postData);
        $postData['m_active'] = cekMActive($postData);
        
        $status = $this->BeOnemdl->insert($postData);
        if ($status == 'true') {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $json['msg'] = $status;
            echo json_encode($json);
        }

    }

    /**
     * Update Data User
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['username'] = strtolower($postData['username']);
        $postData['fullname'] = trim(trim(strtoupper($postData['fullname'])));
        if (strlen($postData['password']) > 0) {
            $postData['password'] = $this->encrypt->hash($postData['password']);
        } else {
            unset($postData['password']);
        }
        // $postedPeriod = Datetime::createFromFormat('m-Y-d', $postData['period'].'-'.'01');
        // $period = $postedPeriod->format('Y-m-d');
        // $postData['period'] = $period;
        $postData = cekSelect2(array('usergroup_id'), $postData);
        $postData = cekSelect2(array('userlevel_id'), $postData);
        $postData['status'] = cekStatus($postData);
        $postData['m_active'] = cekMActive($postData);

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
     * Hapus Data User
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
     * Ambil Data Table User
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_users';
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Ambil Data User Group
     */
    function getUsergroup() {
        checkIfNotAjax();
        $usergroup_id = $this->auth['usergroup_id'];
        if ($usergroup_id != '1')
        {
            $this->libauth->check(__METHOD__);    
        }
        
        $this->BeOnemdl->table = 'usergroup';
        $this->BeOnemdl->searchable = array('usergroupname');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "usergroupname");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Upload Foto User
     */
    function upload() {
        $this->libauth->check(__METHOD__);
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
        $this->libauth->check(__METHOD__);
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

    /**
     * Ambil Data Departement (Public)
     */
    function getDepartment() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'department';
        $this->BeOnemdl->searchable = array('departmentname');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "concat(departmentname,' [', departmentcode,']')");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }


    /**
     * Ambil Data User (Public)
     */
    function getDataUser() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_users';
        $select = 'id,username,fullname,jobtitle,usergroupname,departmentname,branchofficename';
        $searchfield = array('username','fullname','jobtitle','usergroupname','departmentname','branchofficename');
        $where = array('status' => '1');
        $addwhere = array();
        $result['results'] = $this->BeOnemdl->getSelect2bit($select, $searchfield, $where, $addwhere);
        $result['more'] = true;
        echo json_encode($result);
    }


    /**
     * Ambil Data Direct Manager
     */
    function getDirectmanager() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_users';
        $this->BeOnemdl->searchable = array('fullname');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "fullname");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1', 'peoplemanager' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Ambil Data User Level (Public)
     */
    function getUserlevel() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'userlevel';
        $this->BeOnemdl->searchable = array('userlevelname');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "userlevelname");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Ambil Data Branchoffice (Public)
     */
    function getBranchoffice() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'branchoffice';
        $this->BeOnemdl->searchable = array('branchofficename');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "concat(branchofficename,' [', branchofficecode,']')");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

    /**
     * Ambil Data Branchoffice by Branch (Public)
     */
    function getBranch() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $branchoffice_id = $this->auth['branchoffice_id'];
        $this->BeOnemdl->table = 'branchoffice';
        $select = 'id,shortname,branchofficename';
        $searchfield = array('shortname', 'branchofficename');
        $where = array('status' => '1');
        $where = array('id' => $branchoffice_id);
        $result['results'] = $this->BeOnemdl->getSelect2bit($select, $searchfield, $where);
        $result['more'] = true;
        echo json_encode($result);
    }

     /**
     * Ambil Data Company (Public)
     */
    function getCompany() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'company';
        $this->BeOnemdl->searchable = array('companyname');
        $this->BeOnemdl->select2fields = array('id' => 'id', 'text' => "concat(companyname,' [', companyshort,']')");
        $result['results'] = $this->BeOnemdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

}
