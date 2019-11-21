<?php

class home extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'home', 'jsfiles' => array('c3/d3.v3.min', 'c3/c3', 'home'), 'cssfiles' => array('c3/c3.min'));
        parent::__construct($config);
        $this->auth = $this->session->userdata('auth');
        $this->period = $this->db->get_where('v_users', array('id' => $this->auth['id']))->row()->period;
        $this->monthyear = substr($this->period, 0, 7);
        $this->userid = $this->auth['id'];
    }

     /**
     * Access Page Home (Public)
     */
    Public function index() {
        //$this->libauth->check(__METHOD__);
        $seluser = ($this->auth['peoplemanager'] != '0') ? true : false;
        $this->template->set('per', substr(revDate($this->period), 3));

        $user_id =  $this->auth['id'];
        $data['user_information'] = $this->get_user_information($user_id);
        $this->template->title('Home');
        $this->template->set('tsmall', 'Main');
        $this->template->set('seluser', $seluser);
        $this->template->set('icon', 'fa fa-home');
        $this->template->build('home/home_v',$data);
    }

     /**
     * Access Data User Home (Public)
     */
    function getUser() {
        checkIfNotAjax();
       //$this->libauth->check(__METHOD__);
        
        $usergroup_id = $this->auth['usergroup_id'];
        $userbranch_id = $this->auth['branchoffice_id'];
        
        $this->BeOnemdl->table = 'v_users';
        $select = 'id,fullname,usergroupname,nik,userlevelname,period,branchofficename,rayoncode,branchoffice_id';
        $searchfield = array('fullname', 'nik', 'usergroupname', 'branchofficename','rayoncode');
        $where = array('status' => '1', 'id!=' => '1');
        
        $addwhere[0]['field'] = 'id';
        $addwhere[0]['data'] = $userid;
        $addwhere[0]['sql'] = 'where';
        
        $result['results'] = $this->BeOnemdl->getSelect2bit($select, $searchfield, $where, $addwhere);
        $result['more'] = true;
        echo json_encode($result);
    }


    /**
    * get Data User Infromations
    */
    protected function get_user_information($user_id)
    {
        $result = $this->db->get_where('v_users', array('id' => $user_id));
        if($result->num_rows() > 0){
            return $result->result();
        }
        else{
            exit("User not found");
        }
    }
}
