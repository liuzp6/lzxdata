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
                    <%--<td>&nbsp;社会信用代码：</td>--%>
                    <%--<td style="padding-left: 2px;">--%>
                        <%--<input id="shxydm" type="text" class="form-control"  style="width: 200px;" />--%>
                    <%--</td>--%>
                    <td>&nbsp;客户名称：</td>
                    <td style="padding-left: 2px;">
                        <input id="lxrName" type="text" class="form-control"  style="width: 200px;" />
                    </td>
                    <td style="padding-left: 5px;">
                        <a id="btn_Search" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;查询</a>
                        <a id="btn_Reset" class="btn btn-primary"><i class="fa fa-undo"></i>&nbsp;重置</a>
                    </td>
                </tr>
            </table>

        </div>

    <div class="toolbar1">
        <div class="btn-group">
            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();" title="刷新"><i class="fa fa-refresh"></i></a>
        </div>
        <div class="btn-group">
            <%--<a id="lr-replace" class="btn btn-default" onclick="learun.reload();"><i class="fa fa-refresh"></i>&nbsp;</a><!-- 刷新 -->--%>
            <shiro:hasPermission  name="mbkhgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_detail()"><i class="fa fa-pencil-square-o"></i>&nbsp;详细</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
        </div>
    </div>
</div>
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

    <div id="loading_manage" style="display: none; left: 648px; top: 197px;">正在为您导出数据，请稍等…</div>
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
            url: '${pageContext.request.contextPath}/admin/custom/customvisit/list_o.html?type=custom&customId=${customId}',
            datatype: "json",
            //height: $(window).height() - 136.5,
            height:  $(window).height()-136.5 ,
            autowidth: true,
            multiselect: true,//复选框
            colModel: [
                { label: '主键', name: 'visitId', hidden: true },
                { label: '联系人', name: 'lxrName', index: 'lxrName', width: 150, align: 'left' },
                { label: '联系电话', name: 'lxdh', index: 'lxdh', width: 150, align: 'left' },
                { label: '拜访内容', name: 'bfnr', index: 'bfnr', width: 150, align: 'left' },
                { label: '拜访方式', name: 'bffs', index: 'bffs', width: 150, align: 'left' },
                { label: '拜访时间', name: 'bfsj', index: 'bfsj', width: 150, align: 'left' }
            ],
            viewrecords: true,
            rowNum: 15,
            rowList: [15, 30, 100],
            pager: "#gridPager",
            sortorder: 'desc',
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

        //查询事件
        $("#btn_Search").click(function () {
            serach();
        });
        //查询按钮注册回车时间
        $('body').bind('keydown', function (event) {
            if (event.keyCode == "13") {
                serach();
            }
        });
        function serach(){
            var url = "${pageContext.request.contextPath}/admin/custom/customvisit/list_o.html?customId=${customId}"
            var queryJson = {
                lxrName: $("#lxrName").val()
            }
            $gridTable.jqGrid('setGridParam', {
                postData: { queryJson: JSON.stringify(queryJson) },
                url: url,
                page: 1,

            }).trigger('reloadGrid');
        }
        //重置
        $("#btn_Reset").click(function () {
            $("#lxrName").val("");
            $("#lxrName").val("");
            serach();
        });
    }
    //获取选中id，返回格式： 1，2，3
    function getSelecteds(){
        //获取多选到的id集合
        var ids = $("#gridTable").getGridParam("selarrrow");
        //遍历访问这个集合
        var idss="";
        $.each(ids, function(idx, obj) {
            var row = $("#gridTable").jqGrid('getRowData', obj);
            idss = idss + "," + row.visitId;
        });
        if(idss){
            idss=idss.substring(1,idss.length);
        }
        return idss;
    }
    //新增
    function btn_add() {

    	var url="${pageContext.request.contextPath}/admin/custom/customvisit/insert_v.html?customId=${customId}";
        dialogOpen({
            id: "add",
            title: "新增客户信息",
            url: url,
            width: "800px",
            height: "500px",
            btn: null
        });
    };

    //编辑
    function btn_edit() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据修改", 2);
            return;
        }
        if (id) {
            var url='${pageContext.request.contextPath}/admin/custom/customvisit/update_v.html?type=system&visitId='+id;
            dialogOpen({
                id: "add",
                title: "修改用户",
                url: url,
                width: "800px",
                height: "500px",
                btn: null
            });
        } else {
            dialogMsg("请选择数据！",2);
        }
    }
    //详细页
    function btn_detail() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据修改", 2);
            return;
        }
        if (id) {
            var url='${pageContext.request.contextPath}/admin/custom/customvisit/detail_v.html?type=system&visitId='+id;
            dialogOpen({
                id: "add",
                title: "修改用户",
                url: url,
                width: "800px",
                height: "500px",
                btn: null
            });
        } else {
            dialogMsg("请选择数据！",2);
        }
    }
    //删除
    function btn_delete(ids) {
        //获取单独一行
        //var id = $("#gridTable").jqGridRowValue("mbid");
        //
        if(!ids){
            ids = getSelecteds();
        }
        if (ids) {
	        layer.confirm('确认删除么?', {icon: 7, title:'提示'}, function(index){
	    		$.ajax({
	    			url:'${pageContext.request.contextPath}/admin/custom/customvisit/del_o.html',
	    			data:'visitIds='+ids+"&time="+new Date(),
	    			type:'post',
	    			dataType: "json",
	    			success: function(data, status, xhr){
                        $("#gridTable").trigger("reloadGrid");
	    				layer.close(index);
	    			},
	    		});
	    	});
        } else {
            dialogMsg("请选择数据！",2);
        }
    }
    //导入
    function excelImp() {
        var url="${pageContext.request.contextPath}/admin/system/mbkh/excelImp_v.html";
        dialogOpen({
            id: "excelImp",
            title: "数据导入（亲！请根据模板填充数据，否则导入的数据可能不是您的预期哦）",
            url: url,
            width: "600px",
            height: "400px",
            btn: null
        });
    };
    //导出
    function excelExp() {
        var url = '${pageContext.request.contextPath}/admin/system/mbkh/excelExp_o.html';
        var xhr = new XMLHttpRequest();
        xhr.open('post', url, true);    // 也可以使用POST方式，根据接口
        xhr.responseType = "blob";  // 返回类型blob
        // 定义请求完成的处理函数，请求前也可以增加加载框/禁用下载按钮逻辑
        $("#lr-excelExp").html("导出中。。");
        $("#loading_manage").show();
        xhr.onload = function () {
            // 请求完成
            if (this.status === 200) {
                // 返回200
                var blob = this.response;
                var reader = new FileReader();
                reader.readAsDataURL(blob);  // 转换为base64，可以直接放入a标签href
                reader.onload = function (e) {
                    $("#loading_manage").hide();
                    $("#lr-excelExp").html("导出");
                    // 转换完成，创建一个a标签用于下载
                    var a = document.createElement('a');
                    a.download = '目标客户表.xlsx';
                    a.href = e.target.result;
                    $("body").append(a);  // 修复firefox中无法触发click
                    a.click();
                    $(a).remove();
                }
            }
        };
        // 发送ajax请求
        xhr.send()
    }
</script>
