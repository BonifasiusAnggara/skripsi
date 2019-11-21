<?PHP
defined('BASEPATH') OR exit('No direct script access allowed');
class DataModel extends CI_Model {

    public $mLoginPattern       = "/^(?=(.*[A-Z]){1})(?=(.*[a-z]){1})(?=(.*\d){1}).{8,15}$/";

    public $itemPerPage         = 25;

    public function ymd() { return date( 'Y-m-d' ); }
    public function his() { return date( 'H:i:s' ); }
    public function ymdhis() { return date( 'Y-m-d H:i:s' ); }

    public function random($long, $type = '13') {

        /*
         *  Type List:
         *  0 -> Lowercases
         *  1 -> Uppercases
         *  2 -> Lowercases + Uppercases
         *  3 -> Numbers
         *  4 -> Lowercases + Numbers
         *  5 -> Uppercases + Numbers
         *  6 -> Lowercases + Uppercases + Numbers
         *  7 -> Lowercases + Special Characters
         *  8 -> Uppercases + Special Characters
         *  9 -> Lowercases + Uppercases + Special Characters
         *  10 -> Numbers + Special Characters
         *  11 -> Lowercases + Numbers + Special Characters
         *  12 -> Uppercases + Numbers + Special Characters
         *  13 -> Lowercases + Uppercases + Numbers + Special Characters
         */
        $pre = "";
        $suf = "";
        $str = "qwertyuiopasdfghjklzxcvbnm";
        $nmb = "123456789";
        $chars = "`~!@#$%^&*()_=+-'{}[];:\"/.,<>?\\|";

        if ( $type == "0" ) {
            $pre = substr(str_shuffle($str), 0, 1);
            $suf = substr(str_shuffle($str), 0, $long - 1);
        } else if ( $type == "1" ) {
            $pre = substr(str_shuffle(strtoupper($str)), 0, 1);
            $suf = substr(str_shuffle(strtoupper($str)), 0, $long - 1);
        } else if ( $type == "2" ) {
            $pre = substr(str_shuffle($str . strtoupper($str)), 0, 1);
            $suf = substr(str_shuffle($str . strtoupper($str)), 0, $long - 1);
        } else if ( $type == "3" ) {
            $pre = substr(str_shuffle($nmb), 0, 1);
            $suf = substr(str_shuffle($nmb . "0"), 0, $long - 1);
        } else if ( $type == "4" ) {
            $pre = substr(str_shuffle($str . $nmb), 0, 1);
            $suf = substr(str_shuffle($str . $nmb . "0"), 0, $long - 1);
        } else if ( $type == "5" ) {
            $pre = substr(str_shuffle($nmb . strtoupper($str)), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . strtoupper($str)), 0, $long - 1);
        } else if ( $type == "6" ) {
            $pre = substr(str_shuffle($nmb . strtoupper($str) . $str), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . strtoupper($str) . $str), 0, $long - 1);
        } else if ( $type == "7" ) {
            $pre = substr(str_shuffle($str . $chars), 0, 1);
            $suf = substr(str_shuffle($str . $chars), 0, $long - 1);
        } else if ( $type == "8" ) {
            $pre = substr(str_shuffle(strtoupper($str) . $chars), 0, 1);
            $suf = substr(str_shuffle(strtoupper($str) . $chars), 0, $long - 1);
        } else if ( $type == "9" ) {
            $pre = substr(str_shuffle($str . strtoupper($str) . $chars), 0, 1);
            $suf = substr(str_shuffle($str . strtoupper($str) . $chars), 0, $long - 1);
        } else if ( $type == "10" ) {
            $pre = substr(str_shuffle($nmb . $chars), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . $chars), 0, $long - 1);
        } else if ( $type == "11" ) {
            $pre = substr(str_shuffle($str . $nmb . $chars), 0, 1);
            $suf = substr(str_shuffle($str . $nmb . "0" . $chars), 0, $long - 1);
        } else if ( $type == "12" ) {
            $pre = substr(str_shuffle($nmb . strtoupper($str) . $chars), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . strtoupper($str) . $chars), 0, $long - 1);
        } else if ( $type == "13" ) {
            $pre = substr(str_shuffle($nmb . strtoupper($str) . $str . $chars), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . strtoupper($str) . $str . $chars), 0, $long - 1);
        } else {
            $pre = substr(str_shuffle($nmb . strtoupper($str) . $str . $chars), 0, 1);
            $suf = substr(str_shuffle($nmb . "0" . strtoupper($str) . $str . $chars), 0, $long - 1);
        }

        return $pre . $suf;
    }

    public function check_data($condition) {
        $query = "select ".$condition['select']." ";
        $query .= " from ".$condition['table']." ";

        if ( isset($condition['join']) ) {
            if ( is_array($condition['join']) ) {
                foreach ($condition['join'] as $i) {
                    if ( isset($i[2]) ) { $query .= $i[2]; }
                    $query .= " join ".$i[0]." ON ".$i[1]." ";
                }
            }
        }

        if ( isset($condition['where']) ) {
            $query .= " where ";
            $w = 0;
            foreach ($condition['where'] as $k => $v) {
                $query .= $k." = '".$v."'";
                if ( ($w + 1) < count($condition['where'])) { $query .= " and "; }
                $w++;
            }
        }

        if ( isset($condition['or_where']) ) {
            $query .= " or ";
            foreach ($condition['or_where'] as $k => $v) { $query .= $k." = '".$v."'"; }
        }

        if ( isset($condition['like']) ) {
            $query .= " where ";
            $w = 0;
            foreach ($condition['like'] as $k => $v) {
                $query .= $k." like%".$v."% escape '!' ";
                if ( ($w + 1) < count($condition['like'])) { $query .= " and "; }
                $w++;
            }
        }

        if ( isset($condition['or_like']) ) {
            $query .= " or ";
            $ol = 0;
            foreach ($condition['like'] as $k => $v) {
                $query .= $k." like%".$v."% escape '!' ";
                if ( ($ol + 1) < count($condition['like'])) { $query .= " and "; }
                $ol++;
            }
        }

        $hasil = $this -> db -> query($query);

        $res = $this -> getResultNumArray($hasil);

        if ( $condition['single'] ) {
            if ( count($res) == 1 ) return true;
            else return false;
        } else {
            if ( count($res) >= 1 ) return true;
            else return false;
        }
    }

    public function get_table($condition) {
        if ( isset($condition['select']) ) { $this -> db -> select($condition['select']); }
        else { $this -> db -> select("*"); }
        if ( isset($condition['where']) ) { $this -> db -> where($condition['where']); }
        if ( isset($condition['or_where']) ) {
            foreach ($condition['or_where'] as $key => $value) { $this -> db -> or_where($value); }
        }
        if ( isset($condition['like']) ) { $this -> db -> like($condition['like']); }
        if ( isset($condition['or_like']) ) {
            foreach ($condition['or_like'] as $key => $value) { $this -> db -> or_like($value); }
        }

        if ( isset($condition['join']) ) {
            foreach ($condition['join'] as $i) {
                if ( ! isset($i[2]) ) $this -> db -> join($i[0], $i[1]);
                else $this -> db -> join($i[0], $i[1], $i[2]);
            }
        }

        if ( isset($condition['group']) ) { $this -> db -> group_by($condition['group']); }
        if ( isset($condition['order']) ) { $this -> db -> order_by($condition['order']); }

        if ( isset($condition['limit']) ) {
            if ( isset($condition['limit'][1]) ) { $this -> db -> limit($condition['limit'][1], $condition['limit'][0]); }
            else { $this -> db -> limit($condition['limit'][0]); }
        }

        $hasil = $this -> db -> get($condition['table']);
        //echo $this->db->last_query(); exit;
        return $this -> getResultNumArray($hasil);
    }

    public function get_count($condition) {
        $this -> db -> select("count(*)");

        if ( isset($condition['where']) ) { $this -> db -> where($condition['where']); }
        if ( isset($condition['or_where']) ) {
            foreach ($condition['or_where'] as $key => $value) { $this -> db -> or_where($value); }
        }
        if ( isset($condition['where_in']) ) { $this -> db -> where_in($condition['where_in']); }
        if ( isset($condition['like']) ) { $this -> db -> like($condition['like']); }
        if ( isset($condition['or_like']) ) {
            foreach ($condition['or_like'] as $key => $value) { $this -> db -> or_like($value); }
        }

        if ( isset($condition['join']) ) {
            foreach ($condition['join'] as $i) {
                if ( ! isset($i[2]) ) $this -> db -> join($i[0], $i[1]);
                else $this -> db -> join($i[0], $i[1], $i[2]);
            }
        }

        $hasil = $this -> db -> get($condition['table']);

        $rows = intval($hasil -> result_array()[0][""]);

        return array(
            'total_data' => $rows,
            'total_page' => ceil($rows / $condition['per_page'])
        );
    }

    public function get_table_total_data($condition) {
        $data = $this -> get_count($condition);
        return $data;
    }

    public function get_single_data($condition) {
        if ( isset($condition['select']) ) { $this -> db -> select($condition['select']); }
        else { $this -> db -> select("*"); }
        if ( isset($condition['where']) ) { $this -> db -> where($condition['where']); }
        if ( isset($condition['or_where']) ) { $this -> db -> or_where($condition['or_where']); }
        if ( isset($condition['or_where']) ) { $this -> db -> or_where($condition['or_where']); }
        if ( isset($condition['like']) ) { $this -> db -> like($condition['like']); }
        if ( isset($condition['or_like']) ) { $this -> db -> or_like($condition['or_like']); }

        if ( isset($condition['join']) ) {
            if ( count($condition['join']) > 0 ) {
                foreach ($condition['join'] as $i) {
                    if ( ! isset($i[2]) ) $this -> db -> join($i[0], $i[1]);
                    else $this -> db -> join($i[0], $i[1], $i[2]);
                }
            }
        }

        $hasil = $this -> db -> get($condition['table']);
        $res = $this -> getResultNumArray($hasil);

        if ( count($res) > 1 ) {
            return null;
        } else if ( count($res) < 1 ) {
            return null;
        } else {
            return $hasil -> row_array();
        }
    }

    public function update($condition) {
        if ( isset($condition['table']) || isset($condition['update_data']) ) {
            if ( isset($condition['where']) ) { $this -> db -> where($condition['where']); }

            $update = $this -> db -> update($condition['table'], $condition['update_data']);

            return $this -> db -> affected_rows() > 0;
        } else {
            return false;
        }
    }

    function base64_to_img($image, $name) {
        $return_img = explode(',', $image);
        $result = base64_decode($return_img[1]);
        $success = file_put_contents($name, $result);
        return $success;
    }

    public function mUploadPath() {
        // return FCPATH . "../recovery_web/assets/uploads/stolen/";
        return FCPATH . "../assets/uploads/stolen/";
    }

    public function getResultNumArray($result) {
        if ( $result != false ) {
            return $result -> result_array();
        } else {
            return array();
        }
    }

    public function num_rows($result) {
        if ( $result != false ) {
            return $result -> result_array()[0][''];
        } else {
            return array();
        }
    }










    //  END OF FILE
    //  PLEASE CODE ABOVE ME!!
}
?>