<!DOCTYPE html>
<html lang="en" class="body-full-height">
    <head>    
        <base href="<?php echo base_url(); ?>"/>
        <!-- META SECTION -->
        <title>BeOne - Web Application:: Login Page</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" href="assets/img/BeOneIcon.ico" type="image/x-icon" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link id="theme" href="assets/themes/css/theme-default.css" rel="stylesheet" type="text/css"/>
        <link href="assets/libs/alertify/css/alertify.core.css" rel="stylesheet" type="text/css"/>
        <link href="assets/libs/alertify/css/alertify.bootstrap.css" rel="stylesheet" type="text/css"/>

        <link href="assets/css/login.css" rel="stylesheet">
        <!-- EOF CSS INCLUDE -->    

    </head>
    <body>

        <div class="login-container">

            <div class="login-box animated fadeInDown">
                <div class="login-body">
                    <div style="text-align: center"><img style="text-align: center" src="assets/img/logo/logoBeOne.png" alt=""/></div>
                    <!--<div class="login-title" style="text-align: center">SIMASET</div> -->
                    <form class="form-horizontal" id="frmLogin">
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" autofocus="" id="username" name="username" class="form-control" placeholder="Username"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="password" id="password" name="password"  class="form-control" placeholder="Password"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-info btn-block">Log In</button>
                            </div>
                            <div class="col-md-6">
                                <button type="reset" class="btn btn-default btn-block">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="login-footer">
                    <div class="pull-left">
                        &copy; 2018 PT. Daya Muda Agung
                    </div>
                </div>
            </div>

        </div>
        <script src="assets/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/libs/alertify/js/alertify.min.js" type="text/javascript"></script>
        <script src="assets/js/modules/auth/auth.js" type="text/javascript"></script>
    </body>
</html>






