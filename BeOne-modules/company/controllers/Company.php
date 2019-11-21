<?php

class Company extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'company', 'jsfiles' => array('company'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'company';
    }

    /**
     * Access Page Company
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Company List');
        $this->template->set('tsmall', 'Company');
        $this->template->set('icon', 'fa fa-building-o');
        $this->template->build('company/company_v');
    }

    /**
     * Insert Data Company
     */
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['company_name'] = trim(trim(strtoupper($postData['company_name'])));
        $postData['company_address'] = trim(trim(strtoupper($postData['company_address'])));
        $postData['company_short'] = trim(trim(strtoupper($postData['company_short'])));
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
     * Update Data Company
     */
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
         $postData['company_name'] = trim(trim(strtoupper($postData['company_name'])));
        $postData['company_address'] = trim(trim(strtoupper($postData['company_address'])));
        $postData['company_short'] = trim(trim(strtoupper($postData['company_short'])));
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
     * Delete Data Company
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
     * Get Data Table Company
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

}
