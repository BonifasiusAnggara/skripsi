<?php

class Branchoffice extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'branchoffice', 'jsfiles' => array('branchoffice'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'branchoffice';
    }

    /**
     * Access Page Branchoffice
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Branch Office');
        $this->template->set('tsmall', 'Branch Office');
        $this->template->set('icon', 'fa fa-building-o');
        $this->template->build('branchoffice/branchoffice_v');
    }

    /**
     * Insert Data Branchoffice
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['branchofficename'] = trim(trim(strtoupper($postData['branchofficename'])));
        $postData['address'] = trim(trim(strtoupper($postData['address'])));
        $postData['shortname'] = trim(trim(strtoupper($postData['shortname'])));
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
     * Update Data Branchoffice
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['branchofficename'] = trim(trim(strtoupper($postData['branchofficename'])));
        $postData['address'] = trim(trim(strtoupper($postData['address'])));
        $postData['shortname'] = trim(trim(strtoupper($postData['shortname'])));
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
     * Delete Data Branchoffice
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
     * get Data Table Branchoffice
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

}
