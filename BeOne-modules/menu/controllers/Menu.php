<?php

class Menu extends BeOne_Controller {

    function __construct() {
        $config = array('modules' => 'menu', 'jsfiles' => array('menu'));
        parent::__construct($config);
        $this->BeOnemdl->table = 'menu';
    }

    /**
     * Access Page Menu
     */
    function index() {
        //$this->libauth->check(__METHOD__);
        $this->template->title('List Menu');
        $this->template->set('tsmall', 'Menu');
        $this->template->set('icon', 'fa fa-navicon');
        $this->template->build('menu/menu_v');
    }

    /**
     * Insert Data Menu
     */
    function insert() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
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
     * Update Data Menu
     */
    function update() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $postData = $this->input->post();
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
     * Delete Data Menu
     */
    function delete() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
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
     * Get Data Table Menu
     */
    function getData() {
        checkIfNotAjax();
        //$this->libauth->check(__METHOD__);
        $cpData = $this->BeOnemdl->getDataTable();
        $this->BeOnemdl->outputToJson($cpData);
    }

    function _createMenu($group_id = null, $pid = 0) {
        $query = $this->db->order_by("menuorder")->get_where('v_create_menu', array('usergroup_id' => $group_id, 'parent_id' => $pid, 'status' => '1'))->result_array();
        if (count($query) > 0) {
            foreach ($query as $val) {
                if ($val['h_child'] == 1) {
                    $c1 = 'xn-openable';
                    $c2 = '<span class="xn-text">' . $val['menu'] . '</span>';
                    $c3 = '<ul class="nav-dropdown-items">';
                } else {
                    $c1 = '';
                    $c2 = '<span class="xn-text">' . $val['menu'] . '</span>';
                    $c3 = '</li>';
                }
                echo '<li class="' . $c1 . '">
                        <a href="' . $val['link'] . '"><i class="' . $val['icon'] . '"></i> ' . $c2 . '</a>';
                echo $c3;
                if ($val['h_child'] == 1) {
                    $this->_createMenu($group_id, $val['menu_id']);
                }
            }
            echo '</ul></li>';
        }
    }

}
