<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
             <div class="col-lg-3">
                <div class="form-group">
                    <label class="control-label col-lg-5" for="monthyear">Period</label>
                    <div class="input-group col-lg-6">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 
                        <input type="text" data-inputmask="'mask': '[99-9999]'" class="form-control dpM" placeholder="Period..." name="monthyear" id="monthyear" value="">
                    </div>
                </div>
            </div><!-- /.form-group -->
            <div class="col-lg-3">
                <button class="btn btn-primary pull-right" id="btnshowcall" style="margin-right:10px;" autofocus=""><i class="fa fa-crosshairs"></i> View Data </button>
            </div>
            <div class="col-lg-3">
                 <a id="btnimport" title="Import" href="#" class="btn btn-success btn-line"><i class="fa fa-upload"></i></a>
                 <!--<a id="btnexport" title="Export" href="#" class="btn btn-primary btn-line"><i class="fa fa-download"></i></a>-->
            </div>

            <div class="panel-body">
                <div id="mainTable" class="box-body">
                    <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Kode Cabang</th>
                                <th>Tanggal SO</th>
                                <th>Nomor SO</th>
                                <th>Nomor Invoice</th>
                                <th>ID Pelanggan</th>
                                <th>Nama Pelanggan</th>
                                <th>Nama Produk</th>
                                <th>Qty SO</th>
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
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="importModal" tabindex="-1" role="dialog" aria-labelledby="importModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="importModalLabel">Import Data</h4>
            </div>
            <form id="frmimportexcel" enctype="multipart/form-data" method="post" action="data/web_data/uploadexcel" name="uploadexcel" target="upload_target">
                <div class="modal-body clearfix">
                    <div class="col-lg-9">
                        <input type="file" name="excel" id="fileimport">
                        <p class="help-block">File : *.xls | *.xlsx, Max.5Mb.</p>
                    </div>
                    <div id="fe" class="col-lg-3">
                    </div>
                </div>
                <div class="modal-footer">
                    <input  type="hidden" name="periode" id="periode" disabled="">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-cloud-upload"></i> Upload</button>
                    <button type="button" class="btn btn-success" id="importex"><i class="fa fa-upload"></i> Import</button>
                    <button type="button" class="btn btn-danger" id="delexcel"><i class="fa fa-remove"></i> Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>