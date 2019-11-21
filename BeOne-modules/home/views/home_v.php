<!--Block User Information-->
<div class="row">
    <div class="col-md-12">
      
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">User Information</strong></h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">                                                                        
                    <div class="row">
                        <div class="col-lg-6 pinggir-kanan">
                            <table class="table table-striped">
                                <tr>
                                    <td>User Name</td>
                                    <td><?php echo $user_information[0]->username;?></td>
                                </tr>
                                <tr>
                                    <td>Full Name</td>
                                    <td><?php echo $user_information[0]->fullname;?></td>
                                </tr>
                                <tr>
                                    <td>NIK</td>
                                    <td><?php echo $user_information[0]->nik;?></td>
                                </tr>
                                <tr>
                                    <td>Job Title</td>
                                    <td><?php echo $user_information[0]->jobtitle;?></td>
                                </tr>
                                <tr>
                                    <td>Branch</td>
                                    <td><?php echo $user_information[0]->branchofficename;?></td>
                                </tr>
                                <tr>
                                    <td>Company</td>
                                    <td><?php echo $user_information[0]->companyname;?></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-6">
                             <div class="thumbnail" style="position:relative;overflow:hidden;">
                                <div class="caption" style="position:absolute;top:0;right:0;background:rgba(66, 139, 202, 0.75);width:100%;height:100%;padding:2%;display:none;text-align:center;color:#fff !important;z-index:2;">
                                    
                                    <p>
                                        <a href="" class="label label-danger" rel="tooltip" title="Zoom" id="zoom-customer-photo">Zoom</a>
                                    </p>
                                </div>
                                <img id="thumb_customer_photo" style="border-radius:10px;border:2px #ccc solid" src="photo/user/user-default.jpg" width="300px;" height="169px;">
                            </div>
                            
                            <p></p>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    
                </div>
            </div>
        
    </div>
</div>
<!--ENDBlock User Information-->

<!--Block User-->
<div class="row">
    <div class="col-md-12">
      
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">Detail</strong></h3>
                    <ul class="panel-controls">
                        
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">                                                                        
                    <div class="row">
                        <table class="table table-bordered table-condensed table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Dept. Code</th>
                                    <th>Dept. Name</th>
                                    <th>User Level</th>
                                    <th>Email</th>
                                    <th>Last Log</th>
                                </tr>
                            </thead>
                            <?php $user_row=1;?>
                            <tbody>
                                <tr>
                                    <td><?php echo $user_row;?></td>
                                    <td><?php echo $user_information[0]->departmentcode; ?></td>
                                    <td><?php echo $user_information[0]->departmentname; ?></td>
                                    <td><?php echo $user_information[0]->userlevelname; ?></td>
                                    <td><?php echo $user_information[0]->email; ?></td>
                                    <td><?php echo $user_information[0]->lastlog; ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
    
    </div>
</div>
<!--ENDBlock User-->