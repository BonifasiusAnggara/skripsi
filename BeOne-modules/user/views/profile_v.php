<div class="animated fadeIn">
    <form id="mainForm" class="form-horizontal">
        <div class="card">
            <div class="card-header">
                <i class="fa fa-edit"></i><span id="ftitle">Add Group</span>
                <div class="card-actions">
                    <a data-widget="collapse" href="javascript:;" class="btn-min"><i class="icon-arrow-down"></i></a>
                </div>
            </div>
            <div class="form-wrap">
                <div class="card-block row">
                    <div class="col-lg-6 pinggir-kanan">
                        <div class="form-group row">
                            <label for="groupname" class="control-label col-lg-4">Nama Group</label>
                            <div class="col-lg-8">
                                <div class="input-group">
                                    <span class="input-group-addon mandatory"><i class="fa fa-users"></i></span> 
                                    <input type="text" autofocus="" id="groupname" name="groupname" placeholder="Nama Group..." data-validation="required" class="form-control">
                                </div>
                            </div>
                        </div><!-- /.form-group -->
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <label class="control-label col-lg-2">Status</label>
                            <div>
                                <div class="input-group col-lg-2">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="status" id="status" class="icheck" checked/>
                                    </span>
                                    <span class="form-control">Active</span>
                                </div>
                            </div>
                        </div><!-- /.form-group -->
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-check"></i> Submit</button>
                    <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-refresh"></i> Reset</button>
                </div>
            </div>
        </div>
    </form>
</div>
