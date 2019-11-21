<?php

class Cakupan_complaint extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'helpdesk_it_setting', 'jsfiles' => array('cakupan_complaint'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'cakupan_complaint';
    }

    /**
     * Access Page Cakupan Complaint
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Cakupan');
        $this->template->set('tsmall', 'Complaint');
        $this->template->set('icon', 'fa fa-coffee');
        $this->template->build('helpdesk_it_setting/cakupan_complaint_v');
    }

    /**
     * get Data Table Cakupan Complaint
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    /**
     * Insert Data Cakupan Complaint
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['cakupan'] = trim(trim(strtoupper($postData['cakupan'])));
        $postData['cakupan_code'] = trim(trim(strtoupper($postData['cakupan_code'])));
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
     * Update Data Cakupan Complaint
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post(NULL, TRUE);
        $postData['cakupan_code'] = trim(trim(strtoupper($postData['cakupan_code'])));
        $postData['cakupan'] = trim(trim(strtoupper($postData['cakupan'])));
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
     * Delete Data Cakupan Complaint
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