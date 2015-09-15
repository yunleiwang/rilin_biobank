function AjaxReqeust(url){
    //$('#content').scrollTop(0);
    $.ajax({
        mimeType: 'text/html; charset=utf-8', // ! Need set mimeType only when run from local file
        url: url,
        type: 'GET',
        success: function(data) {
            $('#ajax-content').html(data);
            //$('.preloader').hide();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(errorThrown);
        },
        dataType: "html",
        async: false
    });
}