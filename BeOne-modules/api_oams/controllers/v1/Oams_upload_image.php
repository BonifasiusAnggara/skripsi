<?php

class Oams_upload_image extends MY_Controller {
    Public $remote_ip_address;
    private $post_data;
    private $get_asset_path = "assets/images/foto_complaint/";

    // private $token_generator_key = "id.dma.user.key";
    private $token_generator_key = "7092de5ab8cb8c027159014fa07d915d97553168";
    var $token = '123456789!!!';

    function __construct() {
        parent::__construct();
        
        $this->remote_ip_address = $_SERVER['REMOTE_ADDR'];
        
        header('Content-type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: POST');
        header('Access-Control-Allow-Headers: Authorization');
        
        $this->load->library('utils');

        // $this -> check_token();
    }

    function __destruct() {
        echo json_encode($this->json);
    }

    private function check_token() {
        /*
         * use this token:
         * 8ae6c2280f6bbf8662324cf3659d8a0c9c0c739d
         *
         */

        $this -> load -> library('encrypt');
        $this -> post_data = $this -> get_post_data();
        $token = $this -> post_data["token"];
        $key = $this -> token_generator_key;

        $ok = $this -> encrypt -> hash($key) === $token;
        if ( $ok ) {
            unset($this -> post_data["token"]);
            $this -> load -> model("DataModel");
        } else {
            $this -> json = array(
                'status' => 'INVALID_TOKEN',
                'token' => $this -> post_data['token'],
                'key' => $this -> encrypt -> hash($key)
            );
            exit;
        }
    }

    private function get_post_data() {
        header('Content-type: application/x-www-form-urlencoded');
        header('Content-type: application/json');
        return json_decode(file_get_contents("php://input"), true);
        // return $_POST;
    }

    private function custom_encode($string) { return strtr( $string, array( '+' => '.', '=' => '-', '/' => '~' ) ); }
    private function custom_decode($string) { return strtr( $string, array( '.' => '+', '-' => '=', '~' => '/' ) ); }
    public function key() {
        $this -> load -> library('encrypt');
        $encoded = $this -> encrypt -> hash($this -> token_generator_key);
        return $this -> custom_encode($encoded);
    }
    public function key_token() { $key = $this -> key(); $this->json = array('key' => $key); }
    public function api_token() {
        $key = $this -> key();
        $this -> load -> library('encrypt');
        $encoded = $this -> encrypt -> hash($key);
        $encoded = $this -> custom_encode($encoded);
        $this->json = array('key' => $key, 'api_token' => $encoded);
    }

    public function verify_user($data) {
        if ( is_array($data) ) {
            if ( isset($data["credential"]) ) {
                $user_params = array(
                    "select" => "*",
                    "table" => "users",
                    "where" => array( "id" => strtoupper($data["credential"]["id"]) ),
                    "single" => true
                );
                $user_data = $this -> get_single_data($user_params);
                if ( $this -> encrypt -> hash($data["credential"]['password']) == $user_data['password'] ) {
                    return $user_data;
                } else {
                    $this -> json = array( "status" => "FORBIDDEN_USER" );
                    exit;
                }
            } else {
                $this -> json = array( "status" => "FORBIDDEN_CREDENTIAL" );
                exit;
            }
        } else {
            $this -> json = array( "status" => "FORBIDDEN_REQUEST" );
            exit;
        }
    }
    private function update_key($outlet_id) {
        $new_key = $this->utils->pass_encode($outlet_id . date('Ymdhis'));
        $this->db->update('appdma_outlet', array(
            'public_key' => $new_key
        ), array(
            'id' => $outlet_id
        ));
        
        return $new_key;
    }

    public function upload_image() {
        $headers = [];
        foreach (getallheaders() as $key => $value) {
            array_push($headers, $value);
        }
        $token = $headers[5];
        $key = $this -> token_generator_key;
        $ok = $this -> encrypt -> hash($key) === $token;
        if ( $ok ) {
            $ext = pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
            $filename = $this -> generateRandomString()."-".date("YmdHis").".".$ext;
            $config = array(
                "upload_path" => FCPATH.$this -> get_asset_path,
                // "allowed_types" => "jpg|png|jpeg|gif|jpe",
                "allowed_types" => "*",
                "file_name" => $filename
            );
            $upload_path = base_url().'assets/images/foto_complaint/';
            $this -> load -> library("upload", $config);
            $this -> upload -> initialize($config);

            $upload = false;
            $upload = $this -> upload -> do_upload("image");

            if ( ! $upload ) {
                $error =  $this -> upload -> display_errors();
                $this -> json = array( "status" => "FAILED", "file" => $_FILES, "error" => $error );
            } else {
                $this -> json = array( "status" => "OK", "filename" => $config["file_name"], "upload_path" => $upload_path );
            }
        } else {
            $this -> json = array(
                'status' => 'INVALID_TOKEN',
                'token' => $this -> post_data['token'],
                'key' => $this -> encrypt -> hash($key)
            );
            exit;
        }
    }

    private function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

}