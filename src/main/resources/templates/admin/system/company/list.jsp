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
    <div class="title-search">
        <table>
            <tr>

                <!--    <td>
                       <div id="queryCondition" class="btn-group">
                           <a class="btn btn-default dropdown-text" data-toggle="dropdown">选择条件</a>
                           <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                           <ul class="dropdown-menu">
                               <li><a data-value="Account">账户</a></li>
                               <li><a data-value="RealName">姓名</a></li>
                               <li><a data-value="Mobile">手机</a></li>
                           </ul>
                       </div>
                   </td>
                   <td style="padding-left: 2px;">
                       <input id="txt_Keyword" type="text" class="form-control" placeholder="请输入要查询关键字" style="width: 200px;" />
                   </td>
                   <td style="padding-left: 5px;">
                       <a id="btn_Search" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;查询</a>
                   </td> -->
            </tr>
        </table>
    </div>
    <div class="toolbar1">
        <div class="btn-group">
            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();"><i class="fa fa-refresh"></i>&nbsp;刷新</a>
            <shiro:hasPermission  name="gsgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a></shiro:hasPermission>
            <shiro:hasPermission  name="gsgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a></shiro:hasPermission>
            <shiro:hasPermission  name="gsgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
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
            //url: "GetClientDataJson.jsp",
            url: "${pageContext.request.contextPath}/admin/system/company/list_o.html",
            datatype: "json",
            height:  $(window).height()-136.5 ,
            autowidth: true,
            colModel: [
                { label: '主键', name: 'id', hidden: true },
                { label: "公司名称", name: "name", width: 300, align: "left", sortable: false },
                { label: "上级部门", name: "parentId",  hidden: true},
                { label: "公司性质", name: "nature", width: 100, align: "left", sortable: false },
                { label: "成立时间", name: "foundedTime", width: 100, align: "left", sortable: false },
                { label: "负责人", name: "manager", width: 100, align: "left", sortable: false },
                { label: "经营范围", name: "businessScope", width: 300, align: "left", sortable: false }
            ],
            treeGrid: true,
            treeGridModel: "nested",
            ExpandColumn: "parentId",
            rowNum: "all",
            rownumbers: true,
            onSelectRow: function () {
                selectedRowIndex = $("#" + this.id).getGridParam('selrow');
            },
            gridComplete: function () {
                $("#" + this.id).setSelection(selectedRowIndex, false);
            }
        });
    }
    //新增
    function btn_add() {
    	 var id = $("#gridTable").jqGridRowValue("id");
         if (id) {
        	 var url="${pageContext.request.contextPath}/admin/system/company/insert_v.html?parentId="+id;
             dialogOpen({
                 id: "add",
                 title: "添加",
                 url: url,
                 width: "800px",
                 height: "500px",
                 btn: null
             });
         } else {
             layer.msg("请选择需要增加子类别的选项！",{icon:3,time:2000}, function(){});
         }
    };
    //编辑
    function btn_edit() {
        var id = $("#gridTable").jqGridRowValue("id");
        if (id) {
            var url="${pageContext.request.contextPath}/admin/system/company/update_v.html?id="+id;
            dialogOpen({
                id: "update",
                title: "修改",
                url: url,
                width: "800px",
                height: "500px",
                btn: null
            });
        } else {
            layer.msg("请选择需要修改的记录！",{icon:3,time:2000}, function(){});
        }
    }
    //删除
    function btn_delete() {
        var id = $("#gridTable").jqGridRowValue("id");
        if(id!=0){
            if (id) {
                layer.confirm('确认删除么?', {icon: 3, title:'提示'}, function(index){
                    var index1 = layer.load(1, {
                        shade: [0.1,'#fff'] //0.1透明度的白色背景
                    });
                    $.ajax({
                        url:'${pageContext.request.contextPath}/admin/system/company/delete_o.html',
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
                layer.msg("请选择需要删除的部门！",{icon:3,time:2000}, function(){});
            }
        }else{
            layer.msg("此修改请联系网站管理员！",{icon:3,time:2000}, function(){});
        }
    }
</script>
