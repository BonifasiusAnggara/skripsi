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

    // $("#listTeknisi").click(function (e) {
    //     e.preventDefault();

    //     var dr = t.rows('.selected').data();

    //     $.each(dr, function (i, val) {
    //         var id_proposal = $('#id_proposal').val();
    //         var category_id = $('#category_id').val();
    //         $.ajax({
    //             type: 'POST',
    //             url: baseUrl + 'relawan/Survey_pendidikan_assign/assign_relawan_pendidikan',
    //             data: 'id=' + val.id + '&&id_proposal=' + id_proposal + '&&category_id=' + category_id,
    //             beforeSend: function () {
    //                 $('.modal-wait-for-callback').modal({
    //                     backdrop: 'static',
    //                     keyboard: false
    //                 });
    //             },
    //             success: function (response) {
    //                 window.location.href = baseUrl + 'relawan/Survey_pendidikan';
    //             }
    //         });
    //         $("#modal-assign-proposal").modal('hide');
    //     });
    // });
})(jQuery);