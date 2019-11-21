<?php
$auth = $this->session->userdata('auth');
//$usr = $this->db->get_where("v_user", array('id' => $auth['id']))->row();
?>
<!-- START PAGE SIDEBAR -->
<div class="page-sidebar scroll page-sidebar-fixed">
    <!-- START X-NAVIGATION -->
    <ul class="x-navigation">
        <li class="xn-logo">
            <a href="." style="padding:10px"><img  style="margin-bottom: 10px" src="assets/img/logo/logoBeOne.png" alt="BeOne"/></a>
            <a href="#" class="x-navigation-control"></a>
        </li>      
        <li class="xn-profile">
            <a href="." class="profile-mini">
                <img src="photo/user/<?php echo $auth['id']; ?>" alt="<?php echo $auth['username']; ?>">
            </a>
            <div class="profile">
                <div class="profile-data">
                    <div class="profile-data-name"><?php echo $auth['fullname']; ?></div>
                    <div class="profile-data-title"><?php echo $auth['usergroupname']; ?></div>
                </div>
            </div>                                                                        
        </li>
        <li class="xn-title">Main Menu</li>
            <?php echo Modules::run('menu/_createMenu', $auth['usergroup_id']) ?>
    </ul>
    <!-- END X-NAVIGATION -->
</div>
<!-- END PAGE SIDEBAR -->