<?php

class Web_Data extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'data', 'jsfiles' => array('web_data'));
        parent::__construct($config);
        $this->auth = $this->session->userdata('auth');
        $this->BeOnemdl->table = 'mst_data';
        $this->userid = $this->auth['id'];
        $this->userlevel = $this->auth['userlevel_id'];
        $this->usergroup = $this->auth['usergroup_id'];
        $this->branchofficeid = $this->auth['branchoffice_id'];
        $this->importpath = BASEPATH . '../BeOne-modules/tempfiles/data';
    }

    /**
     * Akses Halaman Data Master
     */
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Data');
        $this->template->set('tsmall', 'Master');
        $this->template->set('icon', 'fa fa-upload');
        $this->template->build('data/web_data_v');
    }

        
    /**
     * Ambil Data Data Master
     */
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $year = substr($postData['monthyear'], 3, 4);
        $month = substr($postData['monthyear'], 0, 2);
        $where = array();
        $where[0]['field'] = 'month(tanggalso)';
        $where[0]['data'] = $month;
        $where[0]['sql'] = 'where';
        
        $this->BeOnemdl->table = 'mst_data';
        $cpData = $this->BeOnemdl->getDataTable($where);
        $this->BeOnemdl->outputToJson($cpData);
    }


    function uploadexcel() {
//        $this->roles->user_can( '37H' );
//        $this->_checkMCL();
        $config['upload_path'] = $this->importpath;
        $config['allowed_types'] = 'xls|xlsx';
        $config['max_size'] = '4096';
        $config['file_name'] = 'data-' . $this->auth['id'];
        $this->load->library( 'upload', $config );
        $filex = $config['upload_path'] . $config['file_name'];
        @array_map( 'unlink', glob( $filex ) );
        if ( !$this->upload->do_upload( key( $_FILES ) ) ) {
            $error = array( 'error' => $this->upload->display_errors() );
            echo $error["error"];
        } else {
            $data = array( 'upload_data' => $this->upload->data() );
            echo "1";
        }
    }

    function checkfileimport() {
        $f = list_of_files( $this->importpath );
        $n = 'data-' . $this->auth['id'];
        if ( in_array( $n . '.xls', $f ) ) {
            echo '<span class="label label-info">File : ' . $n . '.xls</span>';
        } else if ( in_array( $n . '.xlsx', $f ) ) {
            echo '<span class="label label-info">File : ' . $n . '.xlsx</span>';
        }
    }

    function delexcel() {
        checkIfNotAjax();
//        $this->roles->user_can( '37J' );
        $postData = $this->input->post();
        $filex = $this->importpath . '/data-' . $this->auth['id'] . ".xls*";
        $status = array_map( 'unlink', glob( $filex ) );
        if ( $status ) {
            $json['msg'] = '1';
            echo json_encode( $json );
        } else {
            $json['msg'] = 'No File Deleted';
            echo json_encode( $json );
        }
    }

    function importexcel() {
//        $this->roles->user_can( '37K' );
        $this->BeOnemdl->table = 'mst_data';
        $postData = $this->input->post();
        $len = strlen($postData['ex']);
        $lenex = $len - 7;

        $ex = substr($postData['ex'],0,$lenex);
        $monthyear = substr($postData['ex'],4,$len);

        $year = substr($monthyear, 3, 4);
        $month = substr($monthyear, 0, 2);
       
        //Delete data by periode
        $this->db->trans_begin();
        $sql = "Delete mst_data WHERE YEAR(tanggalso) = '$year'  and MONTH(tanggalso) = '$month'";
        $sqlstatus = $this->db->query($sql);
                        
        if ($this->db->trans_status() === FALSE) 
        {
            $this->db->trans_rollback();
            foreach ($sqlstatus as $val) 
            {
                if ($val != 1) 
                {
                    $err = $val;
                }
            }
            $statusql = "0";
            $json['msg'] = $err;
            echo json_encode($json);
        } 
        else 
        {
            $statusql = "1";
            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode($json);
        }


        if ($statusql == "1") {

            $file = $this->importpath . '/data-' . $this->auth['id'] . "." . $ex;
            
            
            $rows = $this->BeOnemdl->importexcel( $file );
            foreach ( $rows as $key => $val ) {
                $datainsert[$key] = $val;
            }
            
           
            //--- Insert New Rows
            $this->db->trans_begin();
            if ( isset( $datainsert ) ) {
                foreach ( $datainsert as $key => $val ) {
                    $status = $this->BeOnemdl->insert( $val );
                    if ( $status != 'true' ) {
                        $rowerr['no'] = $key + 1;
                        $rowerr['msg'] = $status;
                    }
                }
            }
            
            if ( $this->db->trans_status() === FALSE ) {
                $this->db->trans_rollback();
                $json['msg'] = 'Excel line : ' . $rowerr['no'] . '<br>' . $rowerr['msg'];
                echo json_encode( $json );
            } else {
                $this->db->trans_commit();
                $json['msg'] = '1';
                echo json_encode( $json );
            }
        }    
    }

}
