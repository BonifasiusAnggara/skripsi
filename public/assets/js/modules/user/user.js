(function ($) {
    //--- Form Submit
    $("#mainForm").submit(function (e) {
        e.preventDefault();
        $(':submit', this).attr('disabled', true);
    }).on('reset', function (e) {
        $("#ftitle").html('Add User');
        $("#username").focus();
        $("#usergroup_id").html('').sel2dma();
        $("#userlevel_id").html('').sel2dma();
        $("#department_id").html('').sel2dma();
        $("#branchoffice_id").html('').sel2dma();
        $("#status").iCheck('check');
        $("#m_active").iCheck('check');
        $('#password').prev().addClass('mandatory');
        $('#password').attr('data-validation', 'required');
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
            if ($("#ftitle").html().substr(0, 4) == "Edit") {
                //--- Edit
                $.post('user/update', $("#mainForm").serialize() + "&id=" + $("body").data("id"), function (obj) {
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
                $.post('user/insert', $("#mainForm").serialize(), function (obj) {
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
        $("#ftitle").html('Edit User');
        $("#username").val(d.username).focus();

        if (d.usergroup_id != null) {
            $("#usergroup_id").html('<option value="' + d.usergroup_id + '">' + d.usergroupname + '</option>').sel2dma();
        } else {
            $("#usergroup_id").html('').sel2dma();
        }

        if (d.userlevel_id != null) {
            $("#userlevel_id").html('<option value="' + d.userlevel_id + '">' + d.userlevelname + '</option>').sel2dma();
        } else {
            $("#userlevel_id").html('').sel2dma();
        }

        if (d.branchoffice_id != null) {
            $("#branchoffice_id").html('<option value="' + d.branchoffice_id + '">' + d.branchofficename + '</option>').sel2dma();
        } else {
            $("#branchoffice_id").html('').sel2dma();
        }

        if (d.department_id != null) {
            $("#department_id").html('<option value="' + d.department_id + '">' + d.departmentname + '</option>').sel2dma();
        } else {
            $("#department_id").html('').sel2dma();
        }

        $("#fullname").val(d.fullname);
        $("#status").iCheck(d.status == 1 ? 'check' : 'uncheck');
        $("#m_active").iCheck(d.m_active == 1 ? 'check' : 'uncheck');
        $("body").data("id", d.id);
        $('#password').prev().removeClass('mandatory');
        $('#password').removeAttr('data-validation');
    });

    //--- Datatables
    var t = $('#mainTable table').DataTable({
        serverSide: true,
        processing: true,
        autoWidth: false,
        sDom: 'it<"row"lp>',
        ajax: {
            url: baseUrl + 'user/getData',
            type: 'POST'
        },
        columns: [
            {data: "#", width: "5%", orderable: false, searchable: false},
            {data: 'username'},
            {data: 'fullname'},
            {data: 'usergroupname', className: "dt-body-center", width: "5%", render: function (data, type, row, meta) {
                    var act = (data == 'Administrator') ? '<span class="label label-success"><i class="fa fa-star"></i> ' + data + '</span>' : data;
                    return act;
                }},
            {data: 'userlevelname'},
            {data: 'branchofficename'},
            {data: 'departmentname'},
            {data: 'lastlog'},
            {data: 'status', className: "dt-body-center", width: "5%", render: function (data, type, row, meta) {
                    var act = (data == '1') ? '<span class="label label-success"><i class="fa fa-check"></i></span>' : '<span class="label label-danger"><i class="fa fa-times"></i></span>';
                    return act;
                }},
            {data: 'm_active', className: "dt-body-center", width: "15%", render: function (data, type, row, meta) {
                var act = (data == '1') ? '<span class="label label-success"><i class="fa fa-check"></i></span>' : '<span class="label label-danger"><i class="fa fa-times"></i></span>';
                return act;
            }},
            {data: 'id', className: "dt-body-center", orderable: false, width: "5%", render: function (data, type, row, meta) {
                    return '<a title="Edit" href="#" class="btn btn-primary btn-sm btn-line"><i class="fa  fa-pencil"></i></a>';
                }
            },
            {data: 'branchoffice_id', visible: false, searchable: false, className: 'never'},
            {data: 'usergroup_id', visible: false, searchable: false, className: 'never'},
            {data: 'userlevel_id', visible: false, searchable: false, className: 'never'},
            {data: 'department_id', visible: false, searchable: false, className: 'never'},
        ],
        order: [[1, 'asc']],
        scrollX:true,
    });
    //--- Select Row , Toggle Row & Delete
    $('#mainTable').selectDTBeOne(t, 'user/delete');

    // Setup - add a text input to each header cell
    $('#searchid td').each(function () {
        if ($(this).index() > 0 && $(this).index() < 8) {
            $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
        }
        if ($(this).index() == 8) {
            $(this).html('<select style="width:100%" type="text" data-id="' + $(this).index() + '"><option value="">-</option><option value="1">Active</option><option value="0">Not Active</option><select/>');
        }
        if ($(this).index() == 9) {
            $(this).html('<select style="width:100%" type="text" data-id="' + $(this).index() + '"><option value="">-</option><option value="1">Active</option><option value="0">Not Active</option><select/>');
        }
    });
    $('#searchid input').keyup(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });
    $('#searchid select').change(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });
    $(".clrs").click(function () {
        $('#searchid input').val('');
        $('#searchid select').val('');
        t.search('')
        t.columns().search('').draw();
    });

    $("#btnphoto").click(function (e) {
        e.preventDefault();
        var dr = t.rows('.selected').data();
        if (dr.length == 0 || dr.length > 1) {
            alertify.error("Please select only one row");
            return false;
        }
        var id = dr[0].id;
        $("#filephotouser").val('');
        $("#filephotouser").attr('name', 'user-' + id);
        $("#elmphotouser").attr('src', 'photo/user/' + id + '?' + (new Date().getTime()));
        $('#myModal').modal('show');
    });

    $('#myModal').on('hide.bs.modal', function (e) {
        $("#mainTable tr").removeClass('selected');
    });

    //--- Upload Photo
    $(":file").click(function () {
        $('#upload_target').remove();
        $("<iframe id=\"upload_target\" name=\"upload_target\" style=\"width:0;height:0;border:0px;\"></iframe>").appendTo("body");
    });

    $("#frmphotouser").submit(function (event) {
        if ($("#filephotouser").val() == '') {
            alertify.error("Please select file");
            return false;
        }
        $('#upload_target').load(function () {
            var isi = $('#upload_target').contents().find('body').html();
            if (isi == '1') {
                $("#elmphotouser").attr('src', 'photo/user/' + $(':file').attr('name').substr(5) + '?' + (new Date().getTime()));
                alertify.success("Upload file success");
                $(':file').val('');
                $('#mainTable table').DataTable().ajax.reload();
            } else {
                alertify.error(isi);
            }
        });
    });

    $("#delphoto").click(function () {
        alertify.set({buttonFocus: "cancel"});
        alertify.confirm("Are you sure ?", function (e) {
            if (e) {
                $.post('user/delphoto', "id=" + $(':file').attr('name').substr(5), function (obj) {
                    if (obj.msg == 1) {
                        alertify.success("File Deleted");
                        $("#elmphotouser").attr('src', 'photo/user/?' + (new Date().getTime()));
                        $('#mainTable table').DataTable().ajax.reload();
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