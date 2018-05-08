<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>${settings.title} - Bootstrap Table</title>
    <meta name="keywords" content="${settings.keywords}">
    <meta name="description" content="${settings.keywords}">

    <link rel="shortcut icon" href="favicon.ico"> <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    
</head>

<body>
	<div class="wrapper wrapper-content animated fadeInRight">
	    <div class="ibox float-e-margins">
	        <div class="ibox-title">
	            <h5>列表</h5>
	        </div>
	        <div class="ibox-content">
	        
				<div id="toolbar">
				 
						<button class="btn btn-primary " type="button" id="insert">
							<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;添加 
						</button>
				
				</div>
				
				<table id="table"
				  data-toolbar="#toolbar"
				  data-show-toggle="true"
				  data-show-columns="true"
				  data-minimum-count-columns="2"
				  data-pagination="true"
				  data-id-field="id"
				  data-page-list="[10, 20,30]"
				  data-show-footer="false"
				  data-method="post"
				  data-click-to-select="true"
				  data-single-select="true"
				  data-striped="true"
				  data-query-params-type=""
				  data-content-type="application/x-www-form-urlencoded"
				  data-side-pagination="server"
				  >
				</table>
	        </div>
	    </div>
	</div>
                        
    <script src="static/js/jquery.min.js?v=2.1.4"></script>
    <script src="static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="static/js/content.min.js?v=1.0.0"></script>
    <script src="static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="static/js/demo/bootstrap-table-demo.min.js"></script>
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
    
</body>

</html>
<script type="text/javascript">
var $table = $('#table'),
selections = [];
function initTable() {
	$table.bootstrapTable({
	    //height: getHeight,
	    pageSize: ${pageSize},
	    url: '${pageContext.request.contextPath}/admin/demo/uploadDemo/listDo.html',
	    queryParams: queryparams,
	    columns: [{
	        field: 'state',
	        align: 'center',
	        valign: 'middle',
	        checkbox: true
	    }, {
	        title: '序号',
	        field: 'index',
	        align: 'center',
	        valign: 'middle',
	        formatter: indexFormatter
	    }, {
	        title: 'id',
	        field: 'id',
	        align: 'center',
	        visible: false,
	        valign: 'middle'
	    }, {
	        title: '标题',
	        field: 'subject',
	        align: 'center',
	        valign: 'middle'
	    }, {
	        title: '操作',
	        field: 'operate',
	        align: 'center',
	        valign: 'middle',
	        formatter: operateFormatter
	    }]
	});
	$(window).resize(function() {
	    $table.bootstrapTable('resetView', {
	        //height: getHeight()
	    });
	});
}



function getIdSelections() {
	return $.map($table.bootstrapTable('getSelections'), function(row) {
	    return row.id
	});
}
function operateFormatter(value, row, index) {
	return [
	    '<a href="javascript:;"  onclick="edit(\'' + row.id + '\')">编辑</a>',
	    '<a href="javascript:;"  onclick="del(\'' + row.id + '\')">删除</a>'
	].join('');
}
//图片
function pictureFormatter(value, row, index) {
         var picture="";
         if(row.urlSpath==''||row.urlSpath==null){
             picture="defaultImage.jpg";
         }else{
             picture=row.urlSpath;
         }
	return [
	    '<img height="100px" width="100px"   src="${pageContext.request.contextPath}/'+picture+'"  />'	
	].join('');
}
function indexFormatter(value, row, index) {
	return index + 1;
}
function getHeight() {
	return $(window).height() - $('.ibox-title').outerHeight(true);
}
$(function() {
	var scripts = [],
    eachSeries = function(arr, iterator, callback) {
        callback = callback || function() {};
        if (!arr.length) {
            return callback();
        }
        var completed = 0;
        var iterate = function() {
            iterator(arr[completed], function(err) {
                if (err) {
                    callback(err);
                    callback = function() {};
                } else {
                    completed += 1;
                    if (completed >= arr.length) {
                        callback(null);
                    } else {
                        iterate();
                    }
                }
            });
        };
        iterate();
    };
	eachSeries(scripts, getScript, initTable);
});
function getScript(url, callback) {
	var head = document.getElementsByTagName('head')[0];
	var script = document.createElement('script');
	script.src = url;
	var done = false;
	script.onload = script.onreadystatechange = function() {
	    if (!done && (!this.readyState ||
	            this.readyState == 'loaded' || this.readyState == 'complete')) {
	        done = true;
	        if (callback)
	            callback();
	        script.onload = script.onreadystatechange = null;
	    }
	};
	head.appendChild(script);
	return undefined;
}
function queryparams(params) {
	return {
	    pageSize: params.pageSize,
	    pageNumber: params.pageNumber,//params.offset / 2 + 1,
	    order: params.sortOrder
	}
}
function edit(id){
	layerutil('修改合作社','${pageContext.request.contextPath}/admin/demo/uploadDemo/update.html?id='+id,'800','500');
}
function del(id){
	layer.confirm('确认删除么?', {icon: 3, title:'提示'}, function(index){
		var index1 = layer.load(1, {
			shade: [0.1,'#fff'] //0.1透明度的白色背景
		});
		$.ajax({
			url:'${pageContext.request.contextPath}/admin/system/dept/del.html',
			data:'id='+id+"&time="+new Date(),
			type:'post',
			dataType: "json",
			success: function(data, status, xhr){ 
				layer.close(index1);
				layer.close(index);
				if(data.result==1){
					layer.msg("操作成功!", {icon: 1,time: 1000}, function(){
						$('#table').bootstrapTable('refresh');
					});   
				}else{
					layer.msg("操作失败："+data.message,{icon: 2,time: 2000},function(){});   
				}
			},
			error: function (XMLHttpRequest, textStatus, errorThrown) {
				layer.close(index1);
				layer.close(index);
				layer.msg("操作失败，请联系管理员！",{icon:2,time:2000}, function(){}); 
			}
		});
	});
}
function layerutil(title,url,w,h){
	layer_show(title,url,w,h);
}
$("button.btn").click(function(){
	var value=$(this).attr("id");
	var url="${pageContext.request.contextPath}/admin/demo/uploadDemo/"+value+".html";
	layerutil("添加合作社",url,'800','500');
})
</script>
