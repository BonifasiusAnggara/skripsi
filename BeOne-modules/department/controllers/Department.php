<?php

class Department extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'department', 'jsfiles' => array('department'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'department';
    }

    /**
     * Access Page Department
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Department');
        $this->template->set('tsmall', 'Master Data');
        $this->template->set('icon', 'fa fa-shield');
        $this->template->build('department/department_v');
    }

    /**
     * Insert Data Department
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['departmentcode'] = trim(trim(strtoupper($postData['departmentcode'])));
        $postData['departmentname'] = trim(trim(strtoupper($postData['departmentname'])));
        $postData['status'] = cekStatus($postData);
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
     * Update Data Department
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['departmentname'] = trim(trim(strtoupper($postData['departmentname'])));
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
     * Delete Data Department
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
     * Get Data Table Department
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

}
