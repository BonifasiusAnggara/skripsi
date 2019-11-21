<?php

class Role extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'admin', 'jsfiles' => array('role'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'group_role';
    }


    /**
     * Access Page Role
     */
    function index() {
        //$this->libauth->check(__METHOD__);
        $this->template->title('Group Role Management');
        $this->template->set('tsmall', 'Admin');
        $this->template->build('admin/role_v');
    }

    /**
     * Insert Data Role
     */
    function insert() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $gid = $postData['usergroup_id'];
        $auth = $this->session->userdata('auth');
        $userid = $auth['id'];
        $created = date('Y-m-d H:i:s', time());
        $dx = $this->db->select('controller,method,info')
                        ->select("'$gid' as usergroup_id")
                        ->select("'$created' as created")
                        ->select("'$userid' as createdby")
                        ->where_in('id', json_decode($postData['id']))
                        ->get('listmethod')->result_array();
        $co = count($dx);
        $status = $this->db->insert_batch('group_role', $dx);
        if ($status == $co) {
            $json['msg'] = '1';
            echo json_encode($json);
        } else {
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        }
    }

    /**
     * Update Data Role
     */
    function update() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
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
     * Delete Data Role
     */
    function delete() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
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
     * Get Data Role
     */
    function getDataRole($id = '') {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $where[0]['field'] = 'usergroup_id';
        $where[0]['data'] = isset($postData['gid']) ? $postData['gid'] : NULL;
        $where[0]['sql'] = 'where';
        $this->BeOnemdl->table = 'group_role';
        $cpData = $this->BeOnemdl->getDataTable($where);
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Get Data Table ListMethod
     */
    function getDataListMethod() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $this->BeOnemdl->table = 'v_listmethod';
        $dx = $this->db->select('classmethod')->get_where('v_group_role', array('usergroup_id' => $postData['gid']))->result_array();
        $arr = array();
        foreach ($dx as $val) {
            $arr[] = $val['classmethod'];
        }
        $where[0]['field'] = 'classmethod';
        $where[0]['data'] = (count($arr) > 0) ? $arr : NULL;
        $where[0]['sql'] = 'where_not_in';
        $cpData = $this->BeOnemdl->getDataTable($where);
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Update Status Role
     */
    function updateStatus() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
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

}
