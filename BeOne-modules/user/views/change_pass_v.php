<div class="row">
    <div class="col-md-12">
        <form id="mainForm" class="form-horizontal">
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">Edit</strong> Password User</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">                                                                        
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="pinggiran" style="margin-bottom: 10px">
                                <div class="form-group row">
                                    <label for="oldpassword" class="control-label col-lg-4">Old Password</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-lock"></i></span> 
                                            <input type="password" autofocus="" id="oldpassword" name="oldpassword" placeholder="Password..." data-validation="required" class="form-control">
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group row">
                                    <label for="password" class="control-label col-lg-4">New Password</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-lock"></i></span> 
                                            <input type="password" autofocus="" id="password" name="password" placeholder="Password..." data-validation="required" class="form-control">
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                                <div class="form-group row">
                                    <label for="password2" class="control-label col-lg-4">Retype New Password</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon mandatory"><i class="fa fa-lock"></i></span> 
                                            <input type="password" id="password2" name="password2" placeholder="Password..." data-validation="required" class="form-control">
                                        </div>
                                    </div>
                                </div><!-- /.form-group -->
                            </div>
                        </div>
                        <div class="col-lg-6">
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