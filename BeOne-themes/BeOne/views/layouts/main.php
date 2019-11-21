<?php echo $template['partials']['header']; ?>
<?php echo $template['partials']['sidebar']; ?>

<!-- PAGE CONTENT -->
 <link id="theme" href="assets/themes/css/theme-blue.css" rel="stylesheet" type="text/css"/>
<div class="page-content">
    <!-- START X-NAVIGATION VERTICAL -->
    <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
        <!-- TOGGLE NAVIGATION -->
        <li class="xn-icon-button">
            <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
        </li>
        <!-- END TOGGLE NAVIGATION -->

        <!-- SIGN OUT -->
        <li class="xn-icon-button pull-right">
            <a href="auth/logout"><span class="fa fa-sign-out"></span></a>                        
        </li> 
        <!-- END SIGN OUT -->
    </ul>
    <!-- END X-NAVIGATION VERTICAL -->                      

    <!-- START BREADCRUMB -->
    <ul class="breadcrumb">
        <li><a href=".">Menu Utama</a></li>                    
        <?php if (isset($tsmall)) echo '<li class="">' . $tsmall . '</li>'; ?>
        <?php if (isset($tparent)) echo '<li class="">' . $tparent . '</li>'; ?>
        <li class=""><?php if (isset($template['title'])) echo $template['title']; ?></li>
    </ul>
    <!-- END BREADCRUMB -->              

    <div class="page-title">                    
        <h2><span class="<?php if (isset($icon)) echo $icon; ?>"></span>&nbsp;&nbsp;<?php echo $template['title']; ?><?php if (isset($tsmall)) echo ' <small class="text-muted">' . $tsmall, '</small>'; ?></h2>
    </div>                   

    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <?php echo $template['body']; ?>
    </div>
    <!-- END PAGE CONTENT WRAPPER -->                
</div>            
<!-- END PAGE CONTENT -->

<?php echo $template['partials']['footer']; ?>


