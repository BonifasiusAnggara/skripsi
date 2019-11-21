<?PHP
defined('BASEPATH') OR exit('No direct script access allowed');
class AppModel extends CI_Model {

    public function customer_stock_range_value($product_id, $customer_id){
        $rangestock_id = $this -> db -> select('rangestock')
            -> where(array( 'product_id'=>$product_id, 'customer_id'=>$customer_id ))
            -> get('customerstock')
            -> result();
        if ( count($rangestock_id) > 0 ) {
            return $rangestock_id[0] -> rangestock;
        }
        return "";
    }

    function the_call($id){
        $call = $this -> db -> get_where('call', array('id'=>$id)) -> row();
        return $call;
    }

    public function customer_call_detail_id($user_id, $customer_id, $call_id = null) {
        if ($call_id == null) {
            $current_date = date("Y-m-d");
            $the_call = $this -> db
                -> select('id')
                -> get_where('call', array('customer_id' => $customer_id, 'calldate' => $current_date, 'user_id' => $user_id))
                -> row();

            if ( isset($the_call->id) ) {
                $call_id = $the_call->id;
            }
        }
        return $call_id;
    }










    //  END OF FILE
    //  PLEASE CODE ABOVE ME!!
}
?>