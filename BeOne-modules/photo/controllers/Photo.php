<?php

class Photo extends BeOne_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        redirect('.');
    }

    /**
     * Show User Foto
     */
    function user($id = 'default') {
//        $this->roles->user_can('26F');
        header('Content-type: image/jpeg');
        $filex = '../BeOne-modules/photo/user/user-' . $id . '.jpg';
        if (file_exists($filex)) {
            readfile($filex);
        } else {
            readfile('../BeOne-modules/photo/user/user-default.jpg');
        }
    }

    /**
     * Show Invetory Foto
     */
    function inventory($id = 'default') {
//        $this->roles->user_can('26F');
        header('Content-type: image/jpeg');
        $filex = '../BeOne-modules/photo/inventory/inv-' . $id . '.jpg';
        if (file_exists($filex)) {
            readfile($filex);
        } else {
            readfile('../BeOne-modules/photo/inventory/inv-default.jpg');
        }
    }


	
	/**
     * Show BeOne Foto
     */
    public function BeOnePhotos($id = 'default')
    {
        header('Content-type: image/jpeg');
        $filex = '../BeOne-modules/photo/BeOne/BeOne-'.$id.'_thumb.jpg';
        if (file_exists($filex)) {
            readfile($filex);
        } else {
            readfile('../BeOne-modules/photo/BeOne/BeOne-default.jpg');
        }
    }

}
