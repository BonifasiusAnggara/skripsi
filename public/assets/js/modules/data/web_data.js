(function ($) {

    $("#btnshowcall").click(function () {
        mont = $("#monthyear").val().substring(0, 2);
        console.log(mont);
        objcolumn = [
            {data: "#", width: "5%", orderable: false, searchable: false},
            {data: 'namacabang'},
            {data: 'tanggalso'},
            {data: 'nomorso'},
            {data: 'nomorinvoice'},
            {data: 'idpelanggan'},
            {data: 'namapelanggan', width: "17%"},
            {data: 'namaproduk', width: "17%"},
            {data: 'qtyso'},
        ];
        //--- Datatables
        var t = $('#mainTable table').DataTable({
            serverSide: true,
            processing: true,
            autoWidth: false,
            sDom: 'it<"row"lp>',
            ajax: {
                url: baseUrl + 'data/web_data/getData',
                type: 'POST',
                data: function (d) {
                    d.monthyear = $("#monthyear").val();
                }
            },
            columns: objcolumn,
            order: [[1, 'asc']]
        });
        //--- Select Row , Toggle Row & Delete
        $('#mainTable').selectDTBeOne(t, '');

        // Setup - add a text input to each header cell
        $('#searchid td').each(function () {
            if ($(this).index() != 0 && $(this).index() != 9) {
                if ($(this).index() == 2 ) {
                    $(this).html('<input type="text" class="dpM" style="width:100%"  placeholder="Search" data-id="' + $(this).index() + '" />');
                    $(".dpM").datepicker({
                        format: "yyyy-mm-dd",
                        autoclose: true,
                    });
                } else {
                    $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
                }
            }  
        });
        
        $('#searchid input').keyup(function () {
            t.columns($(this).data('id')).search(this.value).draw();
        });
        
        $('#searchid .dpM').change(function () {
            //var val = revDate(this.value);
            var val = this.value;
            t.columns($(this).data('id')).search(val).draw();
        });
        $('#searchid select').change(function () {
            t.columns(9).search(this.value).draw();
        });
        
        
        $(".clrs").click(function () {
            $('#searchid input').val('');
            t.search('')
            t.columns().search('').draw();
        });
        $(".clrs").click();
        
    }); 

    //--- Button Import
    $("#btnimport").click(function (e) {
        e.preventDefault();
        $.post('data/web_data/delexcel');
        $("#fe").html('');
        $('#upload_target').remove();
        $("<iframe id=\"upload_target\" name=\"upload_target\" style=\"width:0;height:0;border:0px;\"></iframe>").appendTo("body");
        $("#fileimport").val('');
        $('#importModal').modal('show');
        $("#periode").val($("#monthyear").val());

    });
    //--- Submit Upload Excel 
    $("#frmimportexcel").submit(function (event) {
        if ($("#fileimport").val() == '') {
            alertify.error("Please select file");
            return false;
        }
        $('#upload_target').load(function () {
            var isi = $('#upload_target').contents().find('body').html();
            if (isi == '1') {
                $("#fe").load("data/web_data/checkfileimport");
                alertify.success("Upload file success");
                $(':file').val('');
            } else {
                alertify.error(isi);
            }
        });
    });
    //--- Delete Excel
    $("#delexcel").click(function () {
        alertify.set({buttonFocus: "cancel"});
        alertify.confirm("Are you sure ?", function (e) {
            if (e) {
                $.post('data/web_data/delexcel', function (obj) {
                    if (obj.msg == 1) {
                        $("#fe").load("data/web_data/checkfileimport");
                        alertify.success("File Deleted");
                    } else {
                        alertify.error("Error : " + obj.msg);
                    }
                }, "json").fail(function () {
                    alertify.error("Error Connection");
                });
            }
        });
    });

    //--- Import Excel
    $("#importex").click(function () {
        if ($("#fe").html() == '') {
            alertify.error("Please upload file excel");
            return false;
        }
        
        var pr = $("#periode").val();

        var tf = $("#fe span").html().split('.');
        $.post('data/web_data/importexcel', "ex=" + tf[1] + pr, function (obj) {
            if (obj.msg == 1) {
                $('#mainTable table').DataTable().ajax.reload();
                alertify.success("File Import Success");
                $('#importModal').modal('hide');
            } else {
                alertify.error("Error : " + obj.msg);
            }
        }, "json").fail(function () {
            $('#importModal').modal('hide');
        });
    });

})(jQuery);