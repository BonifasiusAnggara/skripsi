<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

class BeOnemdl extends BeOne_Model {

    public $fillable = array();
    public $table = '';
    public $primary_key = 'id';
    public $searchable = array();
    public $select2fields = array('id' => 'id', 'text' => 'nama', 'icons' => 'icons');

    function __construct() {
        parent::__construct();
    }

    public function setTableName($tableName) {
        $this->table = $tableName;
    }

    public function setSearchable($search) {
        $this->searchable = $search;
    }

    //--- Insert
    function insert($data, $show_last_id = false) {
        $s = date('Y-m-d H:i:s', time());
        $data['created'] = $s;
        $auth = $this->session->userdata('auth');
        $data['createdby'] = $auth['id'];
        $result = $this->db->insert($this->table, $data);
        if (false == $result) {
            $err = $this->db->error();
            $result = $err['code'] . "<br>" . $err['message'];
        }
        return $result;
    }

    //--- Update
    function update($dataUpdate, $where) {
        $s = date('Y-m-d H:i:s', time());
        $user_session = $this->session->userdata('auth');
        $dataUpdate['updated'] = $s;
        $dataUpdate['updatedby'] = $user_session['id'];
        $result = $this->db->update($this->table, $dataUpdate, $where);
        if (false == $result) {
            $err = $this->db->error();
            $result = $err['code'] . "<br>" . $err['message'];
        }
        return $result;
    }

    //--- Delete
    public function delete($col, $where) {
        $this->db->where_in($col, $where);
        $result = $this->db->delete($this->table);
        if (false == $result) {
            $err = $this->db->error();
            $result = $err['code'] . "<br>" . $err['message'];
        }
        return $result;
    }

    //--- Get Datatables
    function getDatatable($where = array()) {
        $postData = $this->input->post();
        $index = 0;
        $select = array();
        $searchable = array();
        $orderable = array();
        foreach ($postData['columns'] as $key => $columns) {
            if (strlen($columns['data'])) {
                if ($columns['data'] == "#")
                    continue;
                $select[] = $columns['data'];
                if ($columns['orderable'] == "true") {
                    $orderable[$key] = $columns['data'];
                }
                if ($columns['searchable'] == "true") {
                    $searchable[$key]['column'] = $columns['data'];
                    $searchable[$key]['query'] = $columns['search']['value'];
                }
            }
        };
        $this->db->select('count(*) as nrow');
        $total = $this->db->get($this->table)->first_row();
        $this->db->start_cache();
        $arrOrLike = array();
        foreach ($searchable as $whatToSearch) {
            if (strlen($whatToSearch['query']) > 0) {
                $qu = $whatToSearch['column'] . " LIKE '%" . $whatToSearch['query'] . "%'";
                $this->db->where($qu);
            } else {
                $arrOrLike[] = $whatToSearch['column'] . " LIKE '%" . $postData['search']['value'] . "%'";
            }
        }
        if (!empty($arrOrLike)) {
            $this->db->where('(' . implode(' OR ', $arrOrLike) . ')');
        }
        //--- ADDITIONAL WHERE 
        if (!empty($where)) {
            foreach ($where as $k => $v) {
                $s = $v['sql'];
                $f = $v['field'];
                $d = $v['data'];
                $this->db->$s($f, $d);
            }
        };
        $this->db->stop_cache();
        $select = array_unique($select);
        $select = count($select) > 0 ? implode(',', $select) : '*';
        $this->db->select($select);
        $this->db->limit($postData['length'], $postData['start']);
        foreach ($postData['order'] as $orderBy) {
            $this->db->order_by($orderable[$orderBy['column']], $orderBy['dir']);
        }
        $get = $this->db->get($this->table);
//        echo $this->db->last_query();exit;
        $result = $get->result_array();
        //var_dump($result);exit;
        $start = $postData['start']; // Penomeran
        $start++;
        foreach ($result as $key => $val) {
            $result[$key]['#'] = (string) $start;
            $start++;
        }
        $this->db->select('count(*) AS num_row');
        $totalFiltered = $this->db->get($this->table)->first_row();
        $this->db->flush_cache();
        return array('draw' => $postData['draw'],
            'data' => $result,
            'recordsFiltered' => $totalFiltered->num_row,
            'recordsTotal' => $total->nrow,
        );
    }

    function getSelect2($where = array()) {
        $postData = $this->input->post();
        $this->db->where($where, false);
        $this->db->select($this->select2fields['id'] . ' as id');
        $this->db->select($this->select2fields['text'] . ' as text', false);
        if (isset($postData['action']) && $postData['action'] == 'initSelection') {
            $getByID = $this->getById($postData['id']);
            $data = new stdClass();
            if (count($getByID) > 0) {
                $data->id = $postData['id'];
                $data->text = $getByID['text'];
            } else {
                $data->id = '';
                $data->text = '';
            }
            echo '[' . json_encode($data) . ']';
            exit;
        }
        $this->db->limit($postData['limit']);
        $last = end($this->searchable);
        if (isset($postData['q'])) {
            $sql = "(";
            foreach ($this->searchable as $field) {
                $sql .= $field . " LIKE '%" . $postData['q'] . "%'";
                if ($field != $last) {
                    $sql .= " OR ";
                }
            };
            $sql .= ")";
            if ($sql != '()') {
                $this->db->where($sql);
            }
        }
        $get = $this->db->get($this->table);
        return $get->result_array();
    }

    function getSelect2bit($select, $search, $where = array(), $addwhere = array()) {
        $arrsearch = array();
        $postData = $this->input->post();
        $this->db->select($select);
        $last = end($search);
        $sql = "(";
        foreach ($search as $val) {
            $sql .= $val . " LIKE '%" . $postData['q'] . "%'";
            if ($val != $last) {
                $sql .= " OR ";
            }
        };
        $sql .= ")";
        $this->db->where($sql);
        $this->db->limit($postData['limit']);
        if (isset($postData['action']) && $postData['action'] == 'initSelection') {
            $getByID = $this->getById($postData['id']);
            $data = new stdClass();
            if (count($getByID) > 0) {
                $data->id = $postData['id'];
                $data->text = $getByID['text'];
            } else {
                $data->id = '';
                $data->text = '';
            }
            echo '[' . json_encode($data) . ']';
            exit;
        }
        //--- ADDITIONAL WHERE 
        if (!empty($addwhere)) {
            foreach ($addwhere as $k => $v) {
                $sql = $v['sql'];
                $field = $v['field'];
                $data = $v['data'];
                $this->db->$sql($field, $data);
            }
        };
        $hsl = $this->db->get_where($this->table, $where);
        //var_dump($this->db->last_query());exit;
        return $hsl->result_array();
    }

    function getById($id) {
        $this->db->where($this->primary_key, $id);
        $get = $this->db->get($this->table);
        return $get->row_array();
    }

    //--- Output JSON    
    function outputToJson($DataOutput, $stringOrArray = 'array') {
        $this->output->set_content_type('application/json');
        $DataOutput = ( $stringOrArray == 'array' ) ? json_encode($DataOutput) : $DataOutput;
        $this->output->set_output($DataOutput);
    }

    function _extArray($arr, $name) {
        if (!empty($arr)) {
            foreach ($arr as $val) {
                $hsl[] = $val[$name];
            }
            return $hsl;
        }
    }

    function exportDataTable($where = array(), $exportfield = array()) {
        $limitexport = 30000;
        $je = $this->input->post();
        $postData = json_decode($je['exparams'], true);
        $index = 0;
        $select = array();
        $searchable = array();
        $orderable = array();
        foreach ($postData['columns'] as $key => $columns) {
            if (strlen($columns['data'])) {
                if ($columns['data'] == "#")
                    continue;
                $select[] = $columns['data'];
                if ($columns['orderable'] == "true") {
                    $orderable[$key] = $columns['data'];
                }
                if ($columns['searchable'] == "true") {
                    $searchable[$key]['column'] = $columns['data'];
                    $searchable[$key]['query'] = $columns['search']['value'];
                }
            }
        };
        $this->db->select('count(*) as nrow');
        $total = $this->db->get($this->table)->first_row();
        $this->db->start_cache();
        $arrOrLike = array();
        foreach ($searchable as $whatToSearch) {
            if (strlen($whatToSearch['query']) > 0) {
                $qu = $whatToSearch['column'] . " LIKE '%" . $whatToSearch['query'] . "%'";
                $this->db->where($qu);
            } else {
                $arrOrLike[] = $whatToSearch['column'] . " LIKE '%" . $postData['search']['value'] . "%'";
            }
        }
        if (!empty($arrOrLike)) {
            $this->db->where('(' . implode(' OR ', $arrOrLike) . ')');
        }
        //--- ADDITIONAL WHERE 
        if (!empty($where)) {
            foreach ($where as $k => $v) {
                $s = $v['sql'];
                $f = $v['field'];
                $d = $v['data'];
                $this->db->$s($f, $d);
            }
        };
        $this->db->stop_cache();
        $select = count($exportfield) > 0 ? $exportfield : $select;
        $select = array_unique($select);
        $select = count($select) > 0 ? implode(',', $select) : '*';
        $this->db->select($select, false);
        $this->db->limit($limitexport);
        foreach ($postData['order'] as $orderBy) {
            $this->db->order_by($orderable[$orderBy['column']], $orderBy['dir']);
        }
        $get = $this->db->get($this->table);
        $this->db->flush_cache();
//        echo $this->db->last_query();exit;
        return $get;
    }
    
    function importexcel( $fname ) {
        $this->load->library( 'excel' );
        try {
            $inputFileType = PHPExcel_IOFactory::identify( $fname );
            $objReader = PHPExcel_IOFactory::createReader( $inputFileType );
            $objReader->setReadDataOnly( true );
            $objPHPExcel = $objReader->load( $fname );
        } catch ( Exception $e ) {
            return $e->getMessage();
        }
        $sheet = $objPHPExcel->getSheet( 0 );
        $highestRow = $sheet->getHighestRow();
        $highestColumn = $sheet->getHighestColumn();
        $headingsArray = $sheet->rangeToArray( 'A1:' . $highestColumn . '1' );
        $h = $headingsArray[0];
        for ( $row = 2; $row <= $highestRow; $row++ ) {
            $rowData = $sheet->rangeToArray( 'A' . $row . ':' . $highestColumn . $row );
            foreach ( $h as $key => $val ) {
                $r[$val] = $rowData[0][$key];
            }
            $dt[] = $r;
        }
        return $dt;
    }

}
