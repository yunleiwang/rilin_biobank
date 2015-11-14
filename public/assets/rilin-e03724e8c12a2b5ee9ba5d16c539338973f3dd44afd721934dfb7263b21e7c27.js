
$(document).ready(function() {
    $('#data-table-1').dataTable( {
        "oLanguage": {
            "sLengthMenu": "每页显示 _MENU_ 条记录",
            "sZeroRecords": "抱歉， 没有找到",
            "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
            "sInfoEmpty": "没有数据",
            "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
            "sSearch": "搜索",
            "oPaginate": {
                "sFirst": "首页",
                "sPrevious": "前一页",
                "sNext": "后一页",
                "sLast": "尾页"
            },
            "sZeroRecords": "没有检索到数据",
            "sProcessing": "<img src='./loading.gif' />"
        }

    } );
    if($('#add_url').val()!=undefined){
    var add_url = $('#add_url').val();
    $('#data-table-1_filter').prepend(
    '<a href='+add_url+' class=pjax-link><button class="btn btn-sm btn-default" name="button">添加</button></a>&nbsp;&nbsp;'
    )
    }
    } );

