<div class="row">
    <div class="col-md-12">
        <form id="mainForm" class="form-horizontal">
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">Add</strong> User</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">                                                                        
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="pinggiran" style="margin-bottom: 10px">
                                <div class="form-group row">
                                    <label for="username" class="control-label col-lg-4">Username</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-user"></i></span> 
                                            <input type="text" autofocus="" id="username" name="username" placeholder="Username..." data-validation="required" class="form-control">
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group row">
                                    <label for="password" class="control-label col-lg-4">Password</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-lock"></i></span> 
                                            <input type="password" autofocus="" id="password" name="password" placeholder="Password..." data-validation="required" class="form-control">
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                                
                                <div class="form-group row">
                                    <label class="control-label col-lg-4" for="usergroup_id">User Group</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-users"></i></span>
                                            <select name="usergroup_id"
                                                    data-ajax="true" 
                                                    data-placeholder="Select User Group..."
                                                    data-url="user/getUsergroup/" 
                                                    data-value="" 
                                                    data-validation="required"
                                                    data-limit="100"
                                                    id="usergroup_id" placeholder="User Group"  class='form-control select2'>
                                            </select>
                                            <span class="input-group-addon"><a href="user/group" target="_blank" title="Add User Group"><i class="fa fa-plus-circle"></i></a></span>
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group row">
                                    <label class="control-label col-lg-4" for="userlevel_id">User Level</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-signal"></i></span>
                                            <select name="userlevel_id"
                                                    data-ajax="true" 
                                                    data-placeholder="Select User Level..."
                                                    data-url="user/getUserlevel/" 
                                                    data-value="" 
                                                    data-validation="required"
                                                    data-limit="100"
                                                    id="userlevel_id" placeholder="User Level"  class='form-control select2'>
                                            </select>
                                            <span class="input-group-addon"><a href="userlevel/Userlevel" target="_blank" title="Add User Level"><i class="fa fa-plus-circle"></i></a></span>
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row">
                                <label class="control-label col-lg-4" for="branchoffice_id">Branchoffice</label>
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <span class="input-group-addon mandatory"><i class="fa fa-camera-retro"></i></span>
                                        <select name="branchoffice_id"
                                                data-ajax="true" 
                                                data-placeholder="Select Branchoffice..."
                                                data-url="user/getBranchoffice/" 
                                                data-value="" 
                                                data-validation="required"
                                                data-limit="100"
                                                id="branchoffice_id" placeholder="Branchoffice"  class='form-control select2'>
                                        </select>
                                        <span class="input-group-addon"><a href="branchoffice/Branchoffice" target="_blank" title="Add Branchoffice"><i class="fa fa-plus-circle"></i></a></span>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4" for="department_id">Department</label>
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <span class="input-group-addon mandatory"><i class="fa fa-briefcase"></i></span>
                                        <select name="department_id"
                                                data-ajax="true" 
                                                data-placeholder="Select Department..."
                                                data-url="user/getDepartment/" 
                                                data-value="" 
                                                data-validation="required"
                                                data-limit="100"
                                                id="department_id" placeholder="Department"  class='form-control select2'>
                                        </select>
                                        <span class="input-group-addon"><a href="department/Department" target="_blank" title="Add Department"><i class="fa fa-plus-circle"></i></a></span>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label for="fullname" class="control-label col-lg-4">Nama Lengkap</label>
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <span class="input-group-addon mandatory"><i class="fa fa-male"></i></span> 
                                        <input type="text" autofocus="" id="fullname" name="fullname" placeholder="Nama Lengkap..." data-validation="required" class="form-control">
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4">Status</label>
                                <div class="col-lg-8">
                                    <div class="input-group col-lg-2">
                                        <span class="input-group-addon">
                                            <input type="checkbox" name="status" id="status" class="icheckbox_minimal-grey checked" checked/>
                                        </span>
                                        <span class="form-control">Active</span>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4">Mobile</label>
                                <div class="col-lg-8">
                                    <div class="input-group col-lg-2">
                                        <span class="input-group-addon">
                                            <input type="checkbox" name="m_active" id="m_active" class="icheckbox_minimal-grey checked" checked/>
                                        </span>
                                        <span class="form-control">Active</span>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-info"><i class="fa fa-check"></i> Submit</button>
                    <button type="reset" class="btn btn-default"><i class="fa fa-refresh"></i> Reset</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">                                
                <h3 class="panel-title"><i class="fa fa-table"></i> Table Users</h3>
                <ul class="panel-controls">
                    <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                </ul>                                
            </div>
            <div class="panel-body">
                <div id="mainTable" class="box-body">
                    <div style="padding: 0 20px 10px 20px" class="row">
                        <button class="btn btn-default toggle-selected" title="Toggle Selected" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-align-justify"></i></button> 
                        <button class="btn btn-danger delete-selected pull-right" title="Delete Rows" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-trash"></i></button> 
                    </div>
                    <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Username</th>
                                <th>Nama Lengkap</th>
                                <th>User Group</th>
                                <th>User Level</th>
                                <th>Branchoffice</th>
                                <th>Department</th>
                                <th>Last Login</th>
                                <th>Status</th>
                                <th>Mobile</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <thead id="searchid">
                            <tr>
                                <td><button class="clrs btn btn-info btn-sm btn-line">Clear</button></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Photo User</h4>
            </div>
            <form id="frmphotouser" enctype="multipart/form-data" method="post" action="user/upload" name="formUploadphoto" target="upload_target">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="form-group col-sm-8">
                            <input type="file" name="" id="filephotouser">
                            <p class="help-block">Image size : 160px * 160px (File : JPG, Max.1Mb).</p>
                        </div>
                        <img id="elmphotouser" src="photo/user/" style="width: 80px">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-upload"></i> Upload</button>
                    <button type="button" class="btn btn-danger" id="delphoto"><i class="fa fa-remove"></i> Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>