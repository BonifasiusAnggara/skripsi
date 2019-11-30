<script>
    var usergroup_id = '<?=$usergroup_id?>';
</script>
<?php if ($usergroup_id == 1 || $usergroup_id == 2 ) { ?>
<div class="row">
    <div class="col-md-12">
        <form id="mainForm" class="form-horizontal">
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">Add</strong> New Complaint</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6 pinggir-kanan">
                            <div class="form-group row">
                                <label for="address" class="control-label col-lg-4">Deskripsi Keluhan</label>
                                <div class="col-lg-8">
                                    <textarea type="text" autofocus="" id="complaint" name="complaint" placeholder="Keluhan..." class="form-control" data-validation="required" ></textarea>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4" for="category_id">Category</label>
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <span class="input-group-addon mandatory"><i class="fa fa-bolt"></i></span>
                                        <select name="category_id"
                                                data-ajax="true" 
                                                data-placeholder="Select Category..."
                                                data-url="helpdesk_it/New_complaint/getCategory/" 
                                                data-value="" 
                                                data-validation="required" 
                                                id="category_id" placeholder="Category"  class='form-control select2'>
                                        </select>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4" for="category_id">Cakupan</label>
                                <div class="col-lg-8">
                                    <div class="input-group">
                                        <span class="input-group-addon mandatory"><i class="fa fa-bullhorn"></i></span>
                                        <select name="cakupan_id"
                                                data-ajax="true" 
                                                data-placeholder="Select Cakupan..."
                                                data-url="helpdesk_it/New_complaint/getCakupan/" 
                                                data-value="" 
                                                data-validation="required" 
                                                id="cakupan_id" placeholder="Category"  class='form-control select2'>
                                        </select>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label style="padding-left: 48px">Upload Image</label>
                                    <input type="file" class="file" data-preview-file-type="any" id="upload_image" name="upload_image" data-validation="required" />
                                    <label id="uploaded_image" class="text-success"></label>
                                </div>
                            </div>
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
<?php } ?>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">                                
                <h3 class="panel-title"><i class="fa fa-table"></i> Table Complaint</h3>
                <ul class="panel-controls">
                    <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                </ul>                                
            </div>
            <div class="panel-body">
                <div id="mainTable" class="box-body">
                    <?php if ($usergroup_id == 1) { ?>
                    <div style="padding: 0 20px 10px 20px" class="row">
                        <button class="btn btn-default toggle-selected" title="Toggle Selected" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-align-justify"></i></button> 
                        <button class="btn btn-danger delete-selected pull-right" title="Delete Rows" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-trash"></i></button> 
                    </div>
                    <?php } ?>
                    <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>No. Tiket</th>
                                <th>Cakupan</th>
                                <th>Category</th>
                                <th>Cabang</th>
                                <th>Department</th>
                                <th>Complaint</th>
                                <th>Tgl. Pengaduan</th>
                                <th>Tgl. Selesai</th>
                                <?php if ($usergroup_id == 1 || $usergroup_id == 4) { ?>
                                <th>Nilai Likert</th>
                                <?php } ?>
                                <th>Status</th>
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
                                <?php if ($usergroup_id == 1 || $usergroup_id == 4) { ?>
                                <td></td>
                                <?php } ?>
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