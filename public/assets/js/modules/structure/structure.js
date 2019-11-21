(function ($) {
    //--- Form Submit
    $("#mainForm").submit(function (e) {
        e.preventDefault();
        $(':submit', this).attr('disabled', true);
    }).on('reset', function (e) {
        $("#ftitle").html('Add');
        $("#status").iCheck('check').focus();
        $(':submit').removeAttr('disabled');
    });

    //--- Validasi
    $.validate({
        form: "#mainForm",
        validateOnBlur: false,
        onError: function () {
            $('.help-block').remove();
            dmafn.errMsg("Please fill form");
        },
        onSuccess: function () {
            if ($("#period").val() == '') {
                dmafn.errMsg("Please fill form");
                return false;
            }
            if ($("#ftitle").html().substr(0, 4) == "Edit") {
                //--- Edit
                $.post('structure/update', $("#mainForm").serialize() + "&id=" + $("body").data("id"), function (obj) {
                    if (obj.msg == 1) {
                        $("#mainForm")[0].reset();
                        $('#mainTable table').DataTable().ajax.reload();
                        alertify.success("Edit Data Success");
                    } else {
                        dmafn.errMsg(obj.msg);
                    }
                }, "json").fail(function () {
                    dmafn.errMsg();
                });
            } else {
                //--- Insert
                $.post('structure/insert', $("#mainForm").serialize(), function (obj) {
                    if (obj.msg == 1) {
                        $("#mainForm")[0].reset();
                        $('#mainTable table').DataTable().ajax.reload();
                        alertify.success("Insert Data Success");
                    } else {
                        dmafn.errMsg(obj.msg);
                    }
                }, "json").fail(function () {
                    dmafn.errMsg();
                });
            }
        }
    });

    //--- Edit Button
    $('#mainTable').on('click', 'a[title^=Edit]', function (e) {
        e.preventDefault();
        $("#mainForm")[0].reset();
        window.scroll(0, 0);
        if ($("#mainForm .panel-body").css('display') == 'none') {
            $("#mainForm .panel-controls a").click();
        }
        var elm = $(this).closest("tr");
        var d = t.row(elm).data();
        $("#ftitle").html('Edit');
        $("#period").val(dmafn.revDate(d.period).slice(3));
        $("#status").iCheck(d.status == 1 ? 'check' : 'uncheck');
        $("body").data("id", d.id);
    });

    //--- Datatables
    var t = $('#mainTable table').DataTable({
        serverSide: true,
        processing: true,
        autoWidth: false,
        sDom: 'it<"row"lp>',
        ajax: {
            url: baseUrl + 'structure/getData',
            type: 'POST'
        },
        columns: [
            {data: "#", width: "5%", orderable: false, searchable: false},
            {data: 'period', render: function (data, type, row, meta) {
                    var data = (data != null) ? dmafn.revDate(data).slice(3) : data;
                    return data;
                }},
            {data: 'status', className: "dt-body-center", render: function (data, type, row, meta) {
                    var act = (data == '1') ? '<span class="label label-success">Active</span>' : '<span class="label label-danger">Not Active</span>';
                    return act;
                }},
            {data: 'id', className: "dt-body-center", orderable: false, render: function (data, type, row, meta) {
                    var btn = '<div class="btn-group"><a title="Set Structure" href="#" class="btn btn-info btn-sm" data-id="' + row.id + '"><i class="fa  fa-cubes"></i></a>';
                    btn += '<a title="Edit" href="#" class="btn btn-primary btn-sm btn-line" data-id="' + row.id + '"><i class="fa  fa-pencil"></i></a>';
                    return btn;
                }
            },
        ],
        order: [[1, 'asc']]
    });
    //--- Select Row , Toggle Row & Delete
    $('#mainTable').selectDTBeOne(t, 'structure/delete');

    // Setup - add a text input to each header cell
    $('#searchid td').each(function () {
        if ($(this).index() == 1) {
            $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
        }
        if ($(this).index() == 2) {
            $(this).html('<select style="width:100%" type="text"><option value="">-</option><option value="1">Active</option><option value="0">Not Active</option><select/>');
        }
    });
    $('#searchid input').keyup(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });
    $('#searchid select').change(function () {
        t.columns(2).search(this.value).draw();
    });
    $(".clrs").click(function () {
        $('#searchid input').val('');
        $('#searchid select').val('');
        t.search('')
        t.columns().search('').draw();
    });

    //--- Make Structure Button
    $('#mainTable').on('click', 'a[title~="Set Structure"]', function (e) {
        e.preventDefault();
        var elm = $(this).closest("tr");
        var d = t.row(elm).data();
        if (d.status == 0) {
            alertify.error("Status Not Active , Please Activate first");
            return false;
        }
        alertify.confirm("Are you sure to save the structure for " + dmafn.revDate(d.period).slice(3) + " period ?", function (e) {
            if (e) {
                $.post('structure/makeStructure', 'id=' + d.id, function (obj) {
                    if (obj.msg == 1) {
                        alertify.success("Make Structure Data Success");
                    } else {
                        alertify.error("Error : " + obj.msg);
                    }
                }, "json").fail(function () {
                    alertify.error("Error Connection");
                });
            }
        });

    });

})(jQuery);