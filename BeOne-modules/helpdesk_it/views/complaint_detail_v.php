<div class="row">
    <div class="col-md-12">
        <div class="panel panel-danger">
            <div class="panel-heading ui-draggable-handle">
                <h3 class="panel-title"><i class="fa fa-file"></i>&nbsp;<strong id="ftitle">No. Tiket</strong> <?=$complaint->no_tiket?></h3>

                <?php if ($usergroup_id == 1 || $usergroup_id == 4) { ?>
                <ul class="panel-controls">
                    <?php if ($complaint->complaint_status_id == 1) { ?>
                        <a class="btn btn-success btn-action-class" target="blank_" title="Assign" id="btn-assign"><i class="fa fa-search"></i>&nbsp;Assign to Teknisi</a>
                    <?php } else { ?>
                        <span class="label label-info">Status: <?=$complaint->complaint_status?></span>
                    <?php } ?>
                </ul>

                <?php } else if ($usergroup_id == 3) { ?>
                <ul class="panel-controls">
                <?php if ($complaint->complaint_status_id == 2) { ?>
                        <a class="btn btn-success btn-action-class" target="blank_" title="Accept" id="btn-accept"><i class="fa fa-check"></i>&nbsp;Accept the assignment</a>
                <?php } else if ($complaint->complaint_status_id == 3) { ?>
                        <a class="btn btn-success btn-action-class" target="blank_" title="Accept" id="btn-solution"><i class="fa fa-cloud-upload"></i>&nbsp;Input Solution</a>
                <?php } else { ?>
                        <span class="label label-info">Status: <?=$complaint->complaint_status?></span>
                <?php } ?>
                </ul>

                <?php } else { ?>
                <ul class="panel-controls">
                    <li><span class="label label-info">Status: <?=$complaint->complaint_status?></span></li>
                </ul>
                <?php } ?>
            </div>

            <div class="panel-body">
                <input type="hidden" id="complaint_id" value="<?=$complaint->id?>">
            	<div class="row">
            		<div class="col-lg-6">
            			<table class="table table-striped">
            				<tr>
                                <td>No. Tiket</td>
                                <td>:</td>
                                <td><?=$complaint->no_tiket?></td>
                            </tr>
                            <tr>
                                <td>Tgl. Pengaduan</td>
                                <td>:</td>
                                <td><?=tanggalIndo(revDate($complaint->tanggal_pengaduan))?></td>
                            </tr>
                            <tr>
                                <td>Tgl. Selesai</td>
                                <td>:</td>
                                <td><?php if ($complaint->tanggal_selesai !== NULL) { echo tanggalIndo(revDate($complaint->tanggal_selesai)); } else { echo '-'; }?></td>
                            </tr>
                            <tr>
                                <td>PIC</td>
                                <td>:</td>
                                <td><?=$complaint->fullname?></td>
                            </tr>
                            <tr>
                                <td>Job Title</td>
                                <td>:</td>
                                <td><?=$complaint->jobtitle?></td>
                            </tr>
                            <tr>
                                <td>Branchoffice</td>
                                <td>:</td>
                                <td><?=$complaint->branchofficename?></td>
                            </tr>
                            <tr>
                                <td>Department</td>
                                <td>:</td>
                                <td><?=$complaint->departmentname?></td>
                            </tr>
                            <tr>
                                <td>Level</td>
                                <td>:</td>
                                <td><?=$complaint->userlevelname?></td>
                            </tr>
                            <tr>
                                <td>Complaint</td>
                                <td>:</td>
                                <td><?=$complaint->complaint?></td>
                            </tr>
                            <tr>
                                <td>Teknisi</td>
                                <td>:</td>
                                <td><?=$complaint->teknisi_name?></td>
                            </tr>
                            <?php if ($usergroup_id == 1 || $usergroup_id == 4) { ?>
                            <tr>
                                <td>Teknisi</td>
                                <td>:</td>
                                <td><?=$complaint->teknisi_name?></td>
                            </tr>
                            <?php } ?>
                            <tr>
                                <td>Solusi</td>
                                <td>:</td>
                                <td><?=$complaint->solusi?></td>
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
                            <img id="thumb_customer_photo" style="border-radius:10px;border:2px #ccc solid" src="<?=$complaint->image_url?>" width="760px;" height="500px;">
                        </div>
                        <p></p>
                        <p></p>
                    </div>
            	</div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalDetailPhoto" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><?=$complaint->no_tiket;?></h4>
        </div>
        <div class="modal-body">
            <img id="thumb_customer_photo" style="border-radius:10px;border:2px #ccc solid" src="<?=$complaint->image_url?>" width="100%">
        </div>
        <div class="modal-footer">

        </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<?php if ($usergroup_id == 1 || $usergroup_id == 4) { ?>
<!-- Modal Assign -->
<div class="modal fade modal-assign-proposal" id="assign_proposal" tabindex="-1" role="dialog" aria-labelledby="assign_proposal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="vpModalLabel"><i class="fa  fa-list"></i>&nbsp;Data Teknisi</h4>
            </div>
            <div class="modal-body">               
                <div id="listTeknisi" class="panel-body">
                    <input type="hidden" name="complaint_id" id="complaint_id">
                    <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama Teknisi</th>
                                <th>Job Title</th>
                                <th>Branchoffice</th>
                                <th>Department</th>
                                <th>Level</th>
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
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                    <span style="color:red;"><i>*) Pilih / Sorot salah satu data kemudian klik mouse</i> </span>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>

<?php if ($usergroup_id == 3) { ?>
<div class="modal fade modal-assign-proposal" id="input_solution" tabindex="-1" role="dialog" aria-labelledby="modal_solution" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="vpModalLabel"><i class="fa fa-edit"></i>&nbsp;Input Solution</h4>
            </div>
            <div class="modal-body"> 
                <div class="row">
                    <div class="col-md-12">
                        <form id="mainForm" class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group row">
                                                <label for="address" class="control-label col-lg-4">Solution</label>
                                                <div class="col-lg-8">
                                                    <textarea type="text" autofocus="" id="solusi" name="solusi" placeholder="Solusi..." class="form-control" data-validation="required" ></textarea>
                                                    <input type="hidden" name="complaint_id" value="<?=$complaint->id?>">
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <div class="pull-right">
                                        <button type="reset" class="btn btn-default"><i class="fa fa-refresh"></i> Reset</button>
                                        <button type="submit" class="btn btn-info"><i class="fa fa-check"></i> Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>