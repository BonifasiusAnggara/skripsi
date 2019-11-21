<?php

class Complaint_status extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'helpdesk_it_setting', 'jsfiles' => array('complaint_status'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'complaint_status';
    }

    /**
     * Access Page Complaint Status
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Complaint');
        $this->template->set('tsmall', 'Status');
        $this->template->set('icon', 'fa fa-cloud-download');
        $this->template->build('helpdesk_it_setting/complaint_status_v');
    }

    /**
     * Insert Data Complaint Status
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['complaint_status'] = trim(trim(strtoupper($postData['complaint_status'])));
        $postData['status_code'] = trim(trim(strtoupper($postData['status_code'])));
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
     * get Data Table Complaint Status
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Update Data Complaint Status
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['status_code'] = trim(trim(strtoupper($postData['status_code'])));
        $postData['complaint_status'] = trim(trim(strtoupper($postData['complaint_status'])));
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
     * Delete Data Complaint Status
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