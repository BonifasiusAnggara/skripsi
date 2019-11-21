<?php

class Utils extends MY_Controller {

  function pass_encode($password)
  {
    if($this->config->item('dma_pass_encode_mode') == 'sha1')
    {
      return sha1($password.$this->config->item('encryption_key'));
    }
  }

  function check_is_login()
  {
    // print_r($this->session->userdata());
    if($this->session->userdata('logged_in') != 1)
    {
      redirect('auth/login');
    }
  }

  function generate_order_number($order_id)
  {
    $order_number = date('m').'/'.date('Y').'/'.$order_id;

    return $order_number;
  }

  function push_notif($fcm_token,$title,$message)
  {
      $title = str_replace('%20',' ',$title);
      $message = str_replace('%20',' ',$message);
      // push

      $api_access_key = 'AAAAgUbVTQw:APA91bG9OXG4taSALAEDy7IhKBhgYKuQvSrt50yRG6tGa4MGoRPlrxRS2DuaJr52JIg6GVx7sbCibmeX5KAnbBe3jyTV0DFCgyD1Acjgbfys-zGFBZ4jkxXxEtvvemr78nWSdGvOS7Cz';

      $registrationIds = $fcm_token;
      #prep the bundle
       $msg = array(
                'body' => $message,
                'title'=> $title,
                'icon' => 'fcm_push_icon',/*Default Icon*/
                'sound' => 'default'/*Default sound*/
                );
      $fields = array(
              'registration_ids' => array($registrationIds),
              'notification' => $msg
            );

      $headers = array(
              'Authorization: key=' . $api_access_key,
              'Content-Type: application/json'
            );
      #Send Reponse To FireBase Server
      $ch = curl_init();
      curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
      curl_setopt( $ch,CURLOPT_POST, true );
      curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
      curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
      curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
      curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
      $result = curl_exec($ch );
      curl_close( $ch );
      #Echo Result Of FireBase Server
      //echo $result;
  }

  function send_email_message($email_to = null, $subject = null, $content = null)
   {
     // Always set content-type when sending HTML email
     $headers = "MIME-Version: 1.0" . "\r\n";
     $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

     // More headers
     $headers .= 'From: DMA Care <care@dma.com>' . "\r\n";
     $send_mail = mail($email_to,$subject,$content,$headers);

     if($send_mail)
     {
       return true;
     }
   }
}
