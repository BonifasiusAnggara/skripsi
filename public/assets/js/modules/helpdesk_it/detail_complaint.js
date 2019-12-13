(function ($) {	
	//Customer photo hover
    $('.thumbnail').hover(
        function(){
            $(this).find('.caption').slideDown(250); //.fadeIn(250)
        },
        function(){
            $(this).find('.caption').slideUp(250); //.fadeOut(205)
        }
    );

    $('#zoom-customer-photo').on('click', function(event){
        event.preventDefault();
        $('#modalDetailPhoto').modal('show');
	});
	
	$("#btn-assign").click(function (e) {       
        $(".modal-dialog").width('1200px');
        $("#assign_proposal").modal('show');
	});
	
	//--- List Datatables Relawan 
    var t = $('#listTeknisi table').DataTable({
        serverSide: true,
        processing: true,
        autoWidth: false,
        sDom: 'it<"row"lp>',
        ajax: {
            url: baseUrl + 'helpdesk_it/Complaint_detail/getDataTeknisi',
            type: 'POST'
        },
        columns: [
            {data: "#", width: "5%", orderable: false, searchable: false},
            {data: 'fullname'},
            {data: 'jobtitle'},
            {data: 'branchofficename'},
            {data: 'departmentname'},
            {data: 'userlevelname'},
            {data: 'id', visible: false, searchable: false, className: 'never'}
        ],
        order: [
            [1, 'asc']
        ]
    });
    //--- Select Row , Toggle Row & Delete
    $('#listTeknisi').selectDTBeOne(t, 'helpdesk_it/New_complaint/delete');

    // Setup - add a text input to each header cell
    $('#searchid td').each(function () {
        if ($(this).index() > 0) {
            $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
        }

    });
    $('#searchid input').keyup(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });

    $(".clrs").click(function () {
        $('#searchid input').val('');
        t.search('');
        t.columns().search('').draw();
    });

    $("#listTeknisi").click(function (e) {
        e.preventDefault();

        var dr = t.rows('.selected').data();

        var teknisi_id = dr[0].id;
        var complaint_id = $("#complaint_id").val();
        var user_id = $("#user_id").val();
        
        $.ajax({
            type: 'POST',
            url: baseUrl + 'helpdesk_it/New_complaint/assignToTeknisi',  
            data: {'teknisi_id': teknisi_id, 'complaint_id': complaint_id, 'user_id': user_id},
            beforeSend: function () {
                $('.modal-wait-for-callback').modal({
                    backdrop: 'static',
                    keyboard: false
                });
            },
            success: function (response) {
                resp = JSON.parse(response);
                console.log(resp.msg);
                if (resp.msg == 1) {
                    alertify.success("Assign Data Success");
                    // location.reload();
                } else {
                    alertify.success(response);
                }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                alertify.success(XMLHttpRequest);
                alertify.success(textStatus);
                alertify.success(errorThrown);
            }
        });
        $(".modal-assign-proposal").modal('hide');
    });

    $("#btn-accept").click(function (e) {
        e.preventDefault();
        var complaint_id = $("#complaint_id").val();
        $.ajax({
            type: 'POST',
            url: baseUrl + 'helpdesk_it/New_complaint/acceptAssignment',  
            data: {'complaint_id': complaint_id},
            success: function (response) {
                resp = JSON.parse(response);
                console.log(resp.msg);
                if (resp.msg == 1) {
                    alertify.success("Accept Data Success");
                    location.reload();
                } else {
                    alertify.success(response);
                }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                alertify.success(XMLHttpRequest);
                alertify.success(textStatus);
                alertify.success(errorThrown);
            }
        });
    });

    $("#btn-solution").click(function (e) {       
        $(".modal-dialog").width('950px');
        $("#input_solution").modal('show');
    });
    
    //--- Form Submit
    $("#mainForm").submit(function (e) {
        e.preventDefault();
        $(':submit', this).attr('disabled', true);
    }).on('reset', function (e) {
		$("#solusi").html('');
		$(':submit').removeAttr('disabled');        
    });
    
    $.validate({
        form: "#mainForm",
        validateOnBlur: false,
        onError: function () {
            dmafn.errMsg("Please fill form");
        },
        onSuccess: function () {
            $.post('helpdesk_it/New_complaint/inputSolution', $("#mainForm").serialize(), function (obj) {
				if (obj.msg == 1) {
                    alertify.success("Input Solution Success");
                    $("#mainForm")[0].reset();
                    location.reload();
                } else {
					dmafn.errMsg(obj.msg);
				}
            }, "json").fail(function () {
                dmafn.errMsg();
            });
        }
    })
    
})(jQuery);