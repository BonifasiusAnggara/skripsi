<?PHP
defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard extends CI_Model {

    private function get_sales_ytd($branchoffice_id, $month, $year) {
        $data = $this->db->query("SELECT bulan monum, LEFT(DATENAME(m,[tanggal]),3) AS moname, SUM(gross) AS sales,

            (SELECT SUM(gros) FROM v_tg_sales
            WHERE v_tg_sales.tahun=v_tr_sales.tahun
            AND v_tg_sales.bulan=v_tr_sales.bulan
            AND v_tg_sales.branchoffice_id=v_tr_sales.branchoffice_id
            ) AS target
        
            FROM v_tr_sales
            WHERE tahun = '$year' AND bulan BETWEEN 1 AND '$month' AND branchoffice_id = '$branchoffice_id'
            GROUP BY v_tr_sales.bulan, LEFT(DATENAME(m,[tanggal]),3), v_tr_sales.branchoffice_id, v_tr_sales.tahun
            ORDER BY v_tr_sales.bulan")->result_array();
        // echo $this->db->last_query(); exit;
        return $data;
    }

    private function get_sales_achievement($branchoffice_id, $month, $year) {
        $data = $this->db->query("SELECT SUM (gross) AS sales, (SELECT SUM (gros) FROM v_tg_sales WHERE v_tg_sales.tahun = v_tr_sales.tahun AND v_tg_sales.bulan = v_tr_sales.bulan AND v_tg_sales.branchoffice_id=v_tr_sales.branchoffice_id) AS target FROM v_tr_sales WHERE tahun = '$year' AND bulan = '$month' AND branchoffice_id = $branchoffice_id GROUP BY v_tr_sales.tahun, v_tr_sales.bulan, v_tr_sales.branchoffice_id")->row_array();
        return $data;
    }

    private function get_daily_sales($branchoffice_id, $month, $year) {
        $data = $this->db->query("SELECT tanggal, SUM(GROSS) AS sales_value FROM v_tr_sales WHERE YEAR(tanggal) = '$year' AND MONTH(tanggal) = '$month' AND branchoffice_id = '$branchoffice_id' GROUP BY tanggal ORDER BY tanggal")->result_array();
        return $data;
    }

    private function sales_by_principal($branchoffice_id, $month, $year) {
        $data = $this -> db
            -> select('*')
            -> order_by('principal_name')
            -> get_where('v_sales_by_principal', array('branchoffice_id' => $branchoffice_id, 'bulan' => $month, 'tahun' => $year))
            -> result_array();
        return $data;
    }

    public function calculate($branchoffice_id) {
        $month = date('m');
        $year = date('Y');

        $data["sales_ytd"] = $this->get_sales_ytd($branchoffice_id, $month, $year);
        for ($i = 0; $i < count($data["sales_ytd"]); $i++) {
            $data["sales_ytd"][$i]["salesBgColor"] = "rgba(54, 162, 235, 0.2)";
            $data["sales_ytd"][$i]["salesBdColor"] = "rgba(54, 162, 235, 1)";
            $data["sales_ytd"][$i]["targetBgColor"] = "rgba(153, 102, 255, 0.2)";
            $data["sales_ytd"][$i]["targetBdColor"] = "rgba(153, 102, 255, 1)";
        }

        $data["sales_achievement"] = $this->get_sales_achievement($branchoffice_id, $month, $year);
        $data["daily_sales"] = $this->get_daily_sales($branchoffice_id, $month, $year);
        $data["sales_by_principal"] = $this->sales_by_principal($branchoffice_id, $month, $year);

        return $data;
    }



    //  END OF FILE
    //  PLEASE CODE ABOVE ME!!
}
?>