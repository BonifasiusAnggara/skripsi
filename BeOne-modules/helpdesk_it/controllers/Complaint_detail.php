<?php

class Complaint_detail extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'helpdesk_it', 'jsfiles' => array('detail_complaint'));
        parent::__construct($config);
        $this->auth = $this->session->userdata('auth');
        $this->user_id = $this->auth['id'];
        $this->userlevel_id = $this->auth['userlevel_id'];
        $this->department_id = $this->auth['department_id'];
        $this->usergroup_id = $this->auth['usergroup_id'];
        $this->branchoffice_id = $this->auth['branchoffice_id'];
        $this->BeOnemdl->table = 'v_complaint';
    }

     /**
     * Access Page New Complaint
     */
    Public function index() {
        $this->libauth->check(__METHOD__);
        $id = $this->input->get('id');
        $data['complaint'] = $this->db->query("SELECT * FROM v_complaint WHERE id = $id")->row();
        $this->template->title('Detail');
        $this->template->set('tsmall', 'Complaint');
        $this->template->set('icon', 'fa fa-film');
        $this->template->set('usergroup_id', $this->usergroup_id);
        $this->template->build('helpdesk_it/complaint_detail_v', $data);
    }

    /**
     * Ambil Data Table Complaint
     */
    function getDataTeknisi() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'v_users';
        $where[0]['field'] = 'usergroup_id';
        $where[0]['data'] = '3';
        $where[0]['sql'] = 'where';
        $cpData = $this->BeOnemdl->getDataTable($where);
        $this->BeOnemdl->outputToJson($cpData);
    }

}