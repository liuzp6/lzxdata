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
    <title>在网客户管理</title>
    
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
    <div style="height: 200px;background-color:#fff;border: 1px solid #ccc">
    <div class="titlePanel" style="border: none">
        <div class="title-search" style="height: 40px;">
            <table>
                <tr>
                 <td>&nbsp;社会信用代码：</td>
                 <td style="padding-left: 2px;">
                     <input id="shxydm" type="text" class="form-control"  style="width: 150px;" />
                 </td>
                 <td>&nbsp;归属人姓名：</td>
                 <td style="padding-left: 2px;">
                     <input id="gsrxm" type="text" class="form-control"  style="width: 150px;" />
                 </td>
                 <td>&nbsp;归属人联系电话：</td>
                 <td style="padding-left: 2px;">
                     <input id="gsrdh" type="text" class="form-control"  style="width: 150px;" />
                 </td>
                 <td>&nbsp;归属人部门：</td>
                 <td style="padding-left: 2px;">
                     <input id="gsrbm" type="text" class="form-control"  style="width: 150px;" />
                 </td>
                 <td>&nbsp;归属人岗位：</td>
                 <td style="padding-left: 2px;">
                     <input id="gsrgw" type="text" class="form-control"  style="width: 150px;" />
                 </td>
                </tr>
            </table>
    </div>
    <div class="title-search" style="height: 40px;">
        <table>
            <tr>
                <td>&nbsp;上级领导姓名：</td>
                <td style="padding-left: 2px;">
                    <input id="sjldxm" type="text" class="form-control"  style="width: 150px;" />
                </td>
                <td>&nbsp;客户名称：</td>
                <td style="padding-left: 2px;">
                    <input id="khmc" type="text" class="form-control"  style="width: 150px;" />
                </td>
                <td>&nbsp;客户信息客户名称：</td>
                <td style="padding-left: 2px;">
                    <input id="khxxkhmc" type="text" class="form-control"  style="width: 150px;" />
                </td>
                <td>&nbsp;潜在需求：</td>
                <td style="padding-left: 2px;">
                    <select id="syyw" name="syyw" class="form-control" style="width: 150px;">
                        <option value="">请选择</option>
                        <option value="G+固">G+固</option>
                        <option value="G网">G网</option>
                        <option value="固网">固网</option>
                        <option value="创新业务">创新业务</option>
                        <option value="创+G">创+G</option>
                        <option value="创+固">创+固</option>
                        <option value="创+G+固">创+G+固</option>
                    </select>
                </td>
                <td>&nbsp;单位性质：</td>
                <td style="padding-left: 2px;">
                    <select id="dwxz" name="dwxz" class="form-control" style="width: 150px;">
                        <option value="">请选择</option>
                        <option value="党政军">党政军</option>
                        <option value="金融保险">金融保险</option>
                        <option value="旅游饭店娱乐服务">旅游饭店娱乐服务</option>
                        <option value="科技公司">科技公司</option>
                        <option value="农业">农业</option>
                        <option value="批发和零售贸易">批发和零售贸易</option>
                        <option value="建筑房地产物业管理">建筑房地产物业管理</option>
                        <option value="交通运输仓储">交通运输仓储</option>
                        <option value="通信业务">通信业务</option>
                        <option value="采掘业和一般制造业">采掘业和一般制造业</option>
                        <option value="公共服务业">公共服务业</option>
                        <option value="科教">科教</option>
                        <option value="文化卫生">文化卫生</option>
                        <option value="其他">其他</option>
                    </select>
                </td>
            </tr>
        </table>
    </div>
    <div class="title-search" style="height: 40px;">
        <table>
            <tr>
                <td>&nbsp;客户来源：</td>
                <td style="padding-left: 2px;">
                    <select id="initStatus" name="initStatus" class="form-control" style="width: 150px;">
                        <option value="">请选择</option>
                        <option value="在网">在网</option>
                        <option value="商机">商机</option>
                        <option value="目标">目标</option>
                    </select>
                </td>
                <td>&nbsp;挖掘日期：</td>
                <td style="padding-left: 2px;" >
                    <input type="text" class="form-control input-datepicker" readonly="readonly"
                           name='wjrq1' id='wjrq1'
                           onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" />
                </td>
                <td>&nbsp;—&nbsp;
                </td>
                <td>
                    <input type="text" class="form-control input-datepicker" readonly="readonly"
                           name='wjrq2' id='wjrq2'
                           onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" />
                </td>
                <td style="padding-left: 2px;">
                <td style="padding-left: 5px;">
                    <a id="btn_Search" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;查询</a>
                    <a id="btn_Reset" class="btn btn-primary"><i class="fa fa-undo"></i>&nbsp;重置</a>
                </td>
            </tr>
        </table>
    </div>

    <div class="toolbar1" style="height: 60px;">
        <div class="btn-group">
            <a id="lr-kh" class="btn btn-default" onclick="btn_intosjkh()"><i class="fa fa-sign-in"></i>&nbsp;转入商机客户</a>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="btn-group">
            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();" title="刷新"><i class="fa fa-refresh"></i></a>
        </div>
        <div class="btn-group">
            <shiro:hasPermission  name="mbkhgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:detail"><a id="lr-detail" class="btn btn-default" onclick="btn_detail()"><i class="fa fa-pencil-square-o"></i>&nbsp;详细</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:imp"><a id="lr-excelImp" class="btn btn-default" onclick="excelImp()"><i class="fa fa-file-excel-o"></i>&nbsp;导入</a></shiro:hasPermission>
            <shiro:hasPermission  name="mbkhgl:exp"><a id="lr-excelExp" class="btn btn-default" onclick="excelExp()"><i class="fa fa-file-excel-o"></i>&nbsp;导出</a></shiro:hasPermission>
            <a id="lr_more" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-reorder"></i>&nbsp;更多<span class="caret"></span>
            </a>
            <ul class="dropdown-menu pull-right">
                <shiro:hasPermission  name="mbkhgl:khxq"><li id="lr_memberadd" ><a class="btn btn-default" onclick="btn_khxq()"><i></i>&nbsp;客户信息</a></li></shiro:hasPermission>
                <shiro:hasPermission  name="mbkhgl:khbf"><li id="lr_authorize"><a class="btn btn-default" onclick="btn_khbf()"><i></i>&nbsp;客户拜访</a></li></shiro:hasPermission>
                <shiro:hasPermission  name="mbkhgl:qtgsyw"><li id="lr_appfilter"><a class="btn btn-default" onclick="btn_qtgsyw()"><i></i>&nbsp;其他公司业务</a></li></shiro:hasPermission>
            </ul>

        </div>
    </div>
</div>
    </div>
<div class="gridPanel" style="position: relative; bottom: 60px;">
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
                $("#gridTable").setGridHeight($(window).height() - 215.5);
            }, 200);
            e.stopPropagation();
        });
    }
    //加载表格
    function GetGrid() {
        var selectedRowIndex = 0;
        var $gridTable = $('#gridTable');
        $gridTable.jqGrid({
            url: "${pageContext.request.contextPath}/admin/custom/mbkh/listDo.html",
            datatype: "json",
            height:  $(window).height()-215.5 ,
            autowidth: true,
            multiselect: true,//复选框
            colModel: [
                { label: '客户id', name: 'customId', hidden: true },
                { label: '状态', name: 'status', hidden: true },
                { label: '用户id', name: 'userId', hidden: true },

                { label: '客户名称', name: 'khmc', index: 'khmc', width: 130, align: 'left' },
                { label: '归属人姓名', name: 'gsrxm', index: 'gsrxm', width: 90, align: 'left' },
                { label: '归属人联系电话', name: 'gsrdh', index: 'gsrdh', width: 110, align: 'left' },
                { label: '归属人部门', name: 'gsrbm', index: 'gsrbm', width: 90, align: 'left' },
                { label: '归属人岗位', name: 'postId', index: 'postId', width: 220, align: 'left',
                    formatter: function (cellvalue, options, rowObject) {
                        if(rowObject.postList){
                            var str="";
                            var json=rowObject.postList;
                            for(var a=0;a<json.length;a++){
                                if(json[a]){
                                    str=str+","+json[a].name;
                                }
                            }
                            if(str.length>1){
                                return str.substring(1,str.length);
                            }else {
                                return "" ;
                            }
                        }else {
                            return "" ;
                        }
                    }
                },
                { label: '上级领导姓名', name: 'sjldxm', index: 'sjldxm', width: 100, align: 'left' },
                { label: '潜在需求', name: 'syyw', index: 'syyw', width: 100, align: 'left' },
                { label: '挖掘日期', name: 'wjrq', index: 'wjrq', width: 100, align: 'left' },
                { label: '单位性质', name: 'dwxz', index: 'dwxz', width: 100, align: 'left' },
                { label: '客户来源', name: 'initStatus', index: 'initStatus', width: 100, align: 'left' },
                { label: '操作记录',  width: 160, align: 'center', autowidth: false,sortable: false,
                    formatter: function (cellvalue, options, rowObject) {
                        return "<a id=\"lr-czjl\" class=\"btn btn-default\" onclick=\"btn_czjl()\"><i></i>&nbsp;查看操作记录</a>";
                    }
                }
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
            var queryJson = {
                shxydm: $("#shxydm").val(),
                gsrxm: $("#gsrxm").val(),
                gsrdh: $("#gsrdh").val(),
                gsrbm: $("#gsrbm").val(),
                gsrgw: $("#gsrgw").val(),
                sjldxm: $("#sjldxm").val(),
                khmc: $("#khmc").val(),
                khxxkhmc: $("#khxxkhmc").val(),
                syyw: $("#syyw").val(),
                dwxz: $("#dwxz").val(),
                initStatus: $("#initStatus").val(),
                wjrq1: $("#wjrq1").val(),
                wjrq2: $("#wjrq2").val()
            }
            $gridTable.jqGrid('setGridParam', {
                postData: { queryJson: JSON.stringify(queryJson) },
                url: "${pageContext.request.contextPath}/admin/custom/mbkh/listDo.html",
                page: 1,
            }).trigger('reloadGrid');
        }

        //重置
        $("#btn_Reset").click(function () {
            $("#shxydm").val("");
            $("#gsrxm").val("");
            $("#gsrdh").val("");
            $("#gsrbm").val("");
            $("#gsrgw").val("");
            $("#sjldxm").val("");
            $("#khmc").val("");
            $("#khxxkhmc").val("");
            $("#syyw").val("");
            $("#dwxz").val("");
            $("#initStatus").val("");
            $("#wjrq1").val("");
            $("#wjrq2").val("");
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
            idss = idss + "," + row.customId;
        });
        if(idss){
            idss=idss.substring(1,idss.length);
        }
        return idss;
    }
    //获取选中status
    function getSelectedsstatus(){
        //获取多选到的id集合
        var status = $("#gridTable").getGridParam("selarrrow");
        //遍历访问这个集合
        var statuss="";
        $.each(statuss, function(idx, obj) {
            var row = $("#gridTable").jqGrid('getRowData', obj);
            statuss = statuss + "," + row.status;
        });
        if(statuss){
            statuss=statuss.substring(1,statuss.length);
        }
        return statuss;
    }
    //获取选中userId
    function getSelectedsuserIds(){
        //获取多选到的id集合
        var ids = $("#gridTable").getGridParam("selarrrow");
        //遍历访问这个集合
        var idss="";
        $.each(ids, function(idx, obj) {
            var row = $("#gridTable").jqGrid('getRowData', obj);
            idss = idss + "," + row.userId;
        });
        if(idss){
            idss=idss.substring(1,idss.length);
        }
        return idss;
    }

    // 操作记录
    function btn_czjl() {
        var id = getSelecteds();
        var userId = getSelectedsuserIds();
        if (id) {
            var url='${pageContext.request.contextPath}/admin/custom/record/list.html?type=system&customId='+id+'&userId='+userId;
            dialogOpen({
                id: "add",
                title: "操作记录",
                url: url,
                width: "1200px",
                height: "800px",
                btn: null

            });
            $("#gridTable").trigger("reloadGrid");
        } else {
            dialogMsg("请选择数据！",2);
        }
    }

    //转入商机客户
    function btn_intosjkh(ids) {
        if(!ids){
            ids = getSelecteds();
        }
        if (ids) {
            layer.confirm('确认转入商机客户么?',{icon: 7, title:'提示'}, function(index){
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/custom/mbkh/intosjkh_o.html',
                    data:'customIds='+ids+"&time="+new Date(),
                    type:'post',
                    dataType: "json",
                    success: function(data, status, xhr){
                        $("#gridTable").trigger("reloadGrid");
                        layer.close(index);
                    }
                });
            });
        } else {
            dialogMsg("请选择数据！", 2);
        }

    }

    //新增
    function btn_add() {
    	var url="${pageContext.request.contextPath}/admin/custom/mbkh/insert.html";
        dialogOpen({
            id: "add",
            title: "新增目标客户",
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
            var url='${pageContext.request.contextPath}/admin/custom/mbkh/update.html?type=system&customId='+id;
            dialogOpen({
                id: "add",
                title: "修改客户",
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
	    			url:'${pageContext.request.contextPath}/admin/custom/mbkh/del.html',
	    			data:'customIds='+ids+"&time="+new Date(),
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
    //详细
    function btn_detail() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据查看详细", 2);
            return;
        }
        if (id) {
            var url='${pageContext.request.contextPath}/admin/custom/mbkh/detail.html?type=system&customId='+id;
            dialogOpen({
                id: "add",
                title: "客户详细页",
                url: url,
                width: "800px",
                height: "500px",
                btn: null
            });
        } else {
            dialogMsg("请选择数据！",2);
        }
    }

    //导入
        function excelImp() {
            var url="${pageContext.request.contextPath}/admin/custom/mbkh/excelImp_v.html";
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
            var url = '${pageContext.request.contextPath}/admin/custom/mbkh/excelExp_o.html';
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

    //客户信息
    function  btn_khxq() {
        var id = getSelecteds();
        var status = getSelectedsstatus();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据查看客户信息", 2);
            return;
        }
        if (id) {
        var url='${pageContext.request.contextPath}/admin/custom/customDetail/list_v.html?type=system&customId='+id+'&status='+status;
        dialogOpen({
            id: "list",
            title: "客户信息列表页",
            url: url,
            width: "1400px",
            height: "800px",
            btn: null
        });
        }else {
            dialogMsg("请选择数据！",2);
        }
    };


    //客户拜访
    function  btn_khbf() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据查看客户拜访", 2);
            return;
        }
        if (id) {
        var url='${pageContext.request.contextPath}/admin/custom/customvisit/list_v.html?type=system&customId='+id;
        dialogOpen({
            id: "list",
            title: "客户拜访列表页",
            url: url,
            width: "1800px",
            height: "1000px",
            btn: null
        });
        }else{
            dialogMsg("请选择数据！",2);
        }
    };


    //其他公司业务
    function  btn_qtgsyw() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据查看其他公司业务", 2);
            return;
        }
        if (id) {
        var url='${pageContext.request.contextPath}/admin/custom/customobusiness/list_v.html?type=system&customId='+id;
        dialogOpen({
            id: "list",
            title: "其他公司业务列表页",
            url: url,
            width: "1800px",
            height: "1000px",
            btn: null
        });}else {
            dialogMsg("请选择数据！",2);
        }
    };
</script>
