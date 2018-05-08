<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
    <meta name="viewport" content="width=device-width" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>员工管理</title>
    
    <link href="static/Content/styles/font-awesome.min.css" rel="stylesheet" />
    <link href="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    
    <!--框架必需end-->
    <!--bootstrap组件start-->
    <link href="static/Content/scripts/bootstrap/bootstrap.min.css" rel="stylesheet" />
    
    <!--bootstrap组件end-->
    <link href="static/Content/scripts/plugins/jqgrid/css?v=I4seKUM-8qQy8qhjHvl4WatVLm3gPeI_RbGRY_4d8Z81" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/tree/css?v=H1Pw5_bJCpzF5OnxCweb5t4XUgVmB2SD2PT8UreOXFA1" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/datetime/css?v=R2gV65TRaqpUG53uer0IzYRSK0iOi8wNodWtNoeZPpQ1" rel="stylesheet"/>
	<link href="static/Content/styles/learun.css?v=Ty7LTzndRqV52dwtX2Mntj35r2jf8KW5SPI02pjLaKY1" rel="stylesheet"/>

    <style>
        body {
            margin: 10px;
            margin-bottom: 0px;
            overflow: hidden;
        }
        .toolbar1 {
	        float: right;
		    line-height: 56px;
		    padding-right: 15px;
        }
        .ui-jqgrid-bdiv{
        	height:200px
        }
    </style>
</head>
<body>
    <div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
    </div>
    

<div class="titlePanel">
    <div class="toolbar1">
        <div class="btn-group">
            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();"><i class="fa fa-refresh"></i>&nbsp;刷新</a>
            <a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a>
            <a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a>
            <a id="lr-edit" class="btn btn-default" onclick="btn_editqx()"><i class="fa fa-pencil-square-o"></i>&nbsp;菜单权限</a>
            <a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a>
        </div>
    </div>
</div>
<div class="gridPanel">
    <table id="gridTable"></table>
    <div id="gridPager"></div>
</div>
	<!--框架必需start-->
    <script src="static/Content/scripts/jquery/jquery-1.10.2.min.js"></script>
    <script src="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="static/Content/scripts/bootstrap/bootstrap.min.js"></script>
    
	<script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
	<script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
	<script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
	<script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
	<script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
	<script src="static/Content/scripts/plugins/jqgrid/js?v=ttfynYH1PjU7ms9MyVeJUzAsIg2Rvst2FhHc8kzv-lc1"></script>
	<!-- layer 弹出层 -->
	<script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
</body>
</html>
<script>
    (function ($, learun) {
        $(function () {
            learun.childInit();
        })
    })(window.jQuery, learun)
</script>
<script>
    $(function () {
        InitialPage();
        GetGrid();
    });
    //初始化页面
    function InitialPage() {
        //resize重设(表格、树形)宽高
        $(window).resize(function (e) {
            window.setTimeout(function () {
                $('#gridTable').setGridWidth(($('.gridPanel').width()));
                $("#gridTable").setGridHeight($(window).height() - 136.5);
            }, 200);
            e.stopPropagation();
        });
    }
    //加载表格
    function GetGrid() {
        var selectedRowIndex = 0;
        var $gridTable = $('#gridTable');
        $gridTable.jqGrid({
            url: "${pageContext.request.contextPath}/admin/system/role/listDo.html",
            datatype: "json",
            //height: $(window).height() - 136.5,
            height:  $(window).height()-136.5 ,
            autowidth: true,
            colModel: [
                { label: '主键', name: 'id', hidden: true },
                { label: '名称', name: 'name', index: 'name', width: 100, align: 'left' },
                { label: '创建时间', name: 'createTime', index: 'createTime', width: 100, align: 'left' }
            ],
            viewrecords: true,
            rowNum: 5,
            rowList: [5, 10, 100],
            pager: "#gridPager",
            sortname: 'createTime asc',
            rownumbers: true,
            shrinkToFit: false,
            gridview: true,
            onSelectRow: function () {
                selectedRowIndex = $("#" + this.id).getGridParam('selrow');
            },
            gridComplete: function () {
                $("#" + this.id).setSelection(selectedRowIndex, false);
            }
        });
        //$gridTable.authorizeColModel()
        //查询条件
        $("#queryCondition .dropdown-menu li").click(function () {
            var text = $(this).find('a').html();
            var value = $(this).find('a').attr('data-value');
            $("#queryCondition .dropdown-text").html(text).attr('data-value', value)
        });
        //查询事件
        $("#btn_Search").click(function () {
            var queryJson = {
                condition: $("#queryCondition").find('.dropdown-text').attr('data-value'),
                keyword: $("#txt_Keyword").val()
            }
            $gridTable.jqGrid('setGridParam', {
                postData: { queryJson: JSON.stringify(queryJson) },
                url: "../../BaseManage/User/GetPageListJson",
                page: 1,

            }).trigger('reloadGrid');
        });
        //查询回车
        $('#txt_Keyword').bind('keypress', function (event) {
            if (event.keyCode == "13") {
                $('#btn_Search').trigger("click");
            }
        });
    }
    //新增
    function btn_add() {
    	
    	var url="${pageContext.request.contextPath}/admin/system/role/insert.html";
    	layer_show("添加角色",url,'800','500');
    	
        /* dialogOpen({
            id: "Form",
            title: '添加用户',
            url: '/BaseManage/User/Form',
            width: "750px",
            height: "550px",
            callBack: function (iframeId) {
                top.frames[iframeId].AcceptClick();
            }
        }); */
    };
    //编辑
    function btn_edit() {
        var id = $("#gridTable").jqGridRowValue("id");
        if (id) {
        	layer_show('修改角色','${pageContext.request.contextPath}/admin/system/role/update.html?id='+id,'800','500');
        } else {
            layer.msg("请选择需要修改的角色！",{icon:3,time:2000}, function(){}); 
        }
    }
  	//权限
    function btn_editqx() {
        var id = $("#gridTable").jqGridRowValue("id");
        if (id) {
        	layer_show('角色菜单','${pageContext.request.contextPath}/admin/system/role/roleMenu.html?id='+id,'800','500');
        } else {
            layer.msg("请选择需要修改的角色！",{icon:3,time:2000}, function(){}); 
        }
    }
    //删除
    function btn_delete() {
        var id = $("#gridTable").jqGridRowValue("id");
        if (id) {
	        layer.confirm('确认删除么?', {icon: 3, title:'提示'}, function(index){
	    		var index1 = layer.load(1, {
	    			shade: [0.1,'#fff'] //0.1透明度的白色背景
	    		});
	    		$.ajax({
	    			url:'${pageContext.request.contextPath}/admin/system/role/del.html',
	    			data:'id='+id+"&time="+new Date(),
	    			type:'post',
	    			dataType: "json",
	    			success: function(data, status, xhr){ 
	    				layer.close(index1);
	    				layer.close(index);
	    				if(data.result==1){
	    					layer.msg("操作成功!", {icon: 1,time: 1000}, function(){
	    						$("#gridTable").trigger("reloadGrid");
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
        } else {
            layer.msg("请选择需要删除的角色！",{icon:3,time:2000}, function(){}); 
        }
    }
</script>
