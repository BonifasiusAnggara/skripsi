(function ($) {
    $("#upload_image").fileinput({
		showUpload: false,
		showCaption: true,
		browseClass: "btn btn-danger",
		fileType: "any"
	});

	//--- Form Submit
    $("#mainForm").submit(function (e) {
        e.preventDefault();
        $(':submit', this).attr('disabled', true);
    }).on('reset', function (e) {
		$("#complaint").html('');
		$("#category_id").html('').sel2dma();
		$("#cakupan_id").html('').sel2dma();
		$(':submit').removeAttr('disabled');        
	});
	
	$.validate({
        form: "#mainForm",
        validateOnBlur: false,
        onError: function () {
            dmafn.errMsg("Please fill form");
        },
        onSuccess: function () {
			if ($('#upload_image')[0].files.length == 0) {
				dmafn.errMsg("Please insert Foto");
				return false;
			}
			$.post('helpdesk_it/New_complaint/insert', $("#mainForm").serialize(), function (obj) {
				if (obj.msg == 1) {
					var files = $('#upload_image')[0].files;
					if (files.length > 0) {
						var error = '';
						var form_data = new FormData(document.getElementById('mainForm'));
						var name = files[0].name;
						var extension = name.split('.').pop().toLowerCase();

						if ($.inArray(extension, ['jpg', 'jpeg', 'png']) == -1) {
							error += "Invalid Image File";
						}

						if (error == '') {
							$.ajax({
								url: baseUrl + 'helpdesk_it/New_complaint/uploadImage/' + obj.id,
								method: 'POST',
								data: form_data,
								contentType: false,
								cache: false,
								async: false,
								processData: false,
								beforeSend: function () {
									$('#uploaded_image').html('Uploading...');
								},
								success: function (data) {
									$("#mainForm")[0].reset();
									$('#mainTable table').DataTable().ajax.reload();
									alertify.success("Insert Data Success");
									alertify.success('File has been uploaded');
									$('#uploaded_image').html('File has been uploaded');
								}
							});
						} else {
							videifn.errMsg(error);
							$("#mainForm")[0].reset();
							$('#mainTable table').DataTable().ajax.reload();
							alertify.success("Insert Data Success");
						}
					} else {
						$("#mainForm")[0].reset();
						$('#mainTable table').DataTable().ajax.reload();
						alertify.success("Insert Data Success");
					}					
				} else {
					dmafn.errMsg(obj.msg);
				}
			}, "json").fail(function () {
                dmafn.errMsg();
            });
		}
	});

	if (usergroup_id == 1 || usergroup_id == 4) {
		column = [
            {data: "#", width: "5%", orderable: false, searchable: false},
			{data: 'no_tiket'},
			{data: 'cakupan'},
			{data: 'category'},
			{data: 'branchofficename'},
			{data: 'departmentname'},
			{data: 'complaint'},
			{data: 'tanggal_pengaduan', render: function (data, type, meta) {
				return dmafn.toTglIndo(data)
			}},
			{data: 'tanggal_selesai', render: function (data, type, meta) {
				return dmafn.toTglIndo(data)
			}},
			{data: 'nilai_likert'},
			{data: 'complaint_status'},
            {data: 'id', className: "dt-body-center", orderable: false, width: "5%", render: function (data, type, meta) {
                    return '<a title="View" href="helpdesk_it/Complaint_detail/?id='+ data +'" class="btn btn-warning btn-sm btn-line"><i class="fa  fa-eye"></i></a>';
                }
            }
        ]
	} else {
		column = [
            {data: "#", width: "5%", orderable: false, searchable: false},
			{data: 'no_tiket'},
			{data: 'cakupan'},
			{data: 'category'},
			{data: 'branchofficename'},
			{data: 'departmentname'},
			{data: 'complaint'},
			{data: 'tanggal_pengaduan', render: function (data, type, meta) {
				return dmafn.toTglIndo(data)
			}},
			{data: 'tanggal_selesai', render: function (data, type, meta) {
				return dmafn.toTglIndo(data)
			}},
			{data: 'complaint_status'},
            {data: 'id', className: "dt-body-center", orderable: false, width: "5%", render: function (data, type, meta) {
                    return '<a title="View" href="helpdesk_it/New_complaint/detail/'+ data +'" class="btn btn-warning btn-sm btn-line"><i class="fa  fa-eye"></i></a>';
                }
            }
        ]
	}

	//--- Datatables
    var t = $('#mainTable table').DataTable({
        serverSide: true,
        processing: true,
        autoWidth: false,
        sDom: 'it<"row"lp>',
        ajax: {
            url: baseUrl + 'helpdesk_it/New_complaint/getData',
            type: 'POST'
        },
        columns: column,
        order: [[1, 'asc']]
    });
    //--- Select Row , Toggle Row & Delete
    $('#mainTable').selectDTBeOne(t, 'helpdesk_it/New_complaint/delete');

    // Setup - add a text input to each header cell
    $('#searchid td').each(function () {
        if ($(this).index() != 0 && $(this).index() <= 11 ) {
            $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
        }
    });
    $('#searchid input').keyup(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });
    $(".clrs").click(function () {
        $('#searchid input').val('');
        $('#searchid select').val('');
        t.search('')
        t.columns().search('').draw();
	});
})(jQuery);