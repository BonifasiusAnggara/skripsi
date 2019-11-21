<?php

class Structure extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'structure', 'jsfiles' => array('structure'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'structure';
        $this->auth = $this->session->userdata( 'auth' );
    }

    /**
     * Akses Halaman
     */
    function index() {
        //$this->libauth->check(__METHOD__);
        $this->template->title('Structure & Period');
        $this->template->set('tsmall', 'Admin');
        $this->template->set('icon', 'fa fa-sitemap');
        $this->template->build('structure/structure_v');
    }

    /**
     * Simpan Data
     */
    function insert() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['period'] = revDate( '01-' . $postData['period'] );
        $postData['status'] = cekStatus($postData);
        if ( $postData['status'] == '1' ) {
            $this->db->update( 'structure', array( 'status' => 0 ) );
            $this->db->update( 'users', array( 'period' => $postData['period'] ) );
        }
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
     * Update Data
     */
    function update() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['period'] = revDate( '01-' . $postData['period'] );
        $postData['status'] = cekStatus($postData);
        $id = $postData['id'];
        unset($postData['id']);
        if ( $postData['status'] == '1' ) {
            $this->db->update( 'structure', array( 'status' => 0 ) );
            $this->db->update( 'users', array( 'period' => $postData['period'] ) );
        }
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
     * Hapus Data
     */
    function delete() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
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
     * Ambil Data Table
     */
    function getData() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }
    
    function makeStructure() {
        checkIfNotAjax();
//        $this->libauth->check(__METHOD__);
        $this->BeOnemdl->table = 'structure_meta';
        $result = $this->db->get( 'v_makestructure' )->result_array();
        $postData = $this->input->post();
        $structure_id = $postData['id'];
        $this->db->trans_begin();
        $status = $this->BeOnemdl->delete( 'structure_id', $structure_id );
        $i = 0;
        if ( count( $result ) ) {
            foreach ( $result as $key => $val ) {
                $rows[$i]['structure_id'] = $structure_id;
                $rows[$i]['user_id'] = $val['user_id'];
                $rows[$i]['usergroup_id'] = $val['usergroup_id'];
                $rows[$i]['directmanager_id'] = $val['directmanager_id'];
                $rows[$i]['userlevel_id'] = $val['userlevel_id'];
                $rows[$i]['rayon_id'] = $val['rayon_id'];
                $rows[$i]['branchoffice_id'] = $val['branchoffice_id'];
                $rows[$i]['dummyuser'] = $val['dummyuser'];
                $rows[$i]['vacantuser'] = $val['vacantuser'];
                $rows[$i]['salesteam_id'] = $val['salesteam_id'];
                $rows[$i]['department_id'] = $val['department_id'];
                $rows[$i]['level'] = $val['Level'];
                $rows[$i]['createdby'] = $this->auth['id'];
                $i++;
            }
            $this->db->insert_batch( 'structure_meta', $rows );
        }
        if ( $this->db->trans_status() === FALSE ) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode( $json );
        } else {
            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode( $json );
        }
    }

}
