<?php

class Complaint_category extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'helpdesk_it_setting', 'jsfiles' => array('complaint_category'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'complaint_category';
    }

    /**
     * Access Page Complaint Category
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Complaint');
        $this->template->set('tsmall', 'Category');
        $this->template->set('icon', 'fa fa-bell-o');
        $this->template->build('helpdesk_it_setting/complaint_category_v');
    }

    /**
     * get Data Table Complaint Category
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Insert Data Complaint Category
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['category'] = trim(trim(strtoupper($postData['category'])));
        $postData['category_code'] = trim(trim(strtoupper($postData['category_code'])));
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
     * Update Data Complaint Category
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['category_code'] = trim(trim(strtoupper($postData['category_code'])));
        $postData['category'] = trim(trim(strtoupper($postData['category'])));
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
     * Delete Data Complaint Category
     */
    function delete() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
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


}