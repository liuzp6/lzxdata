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

    <!--框架必需start-->
    <script src="static/Content/scripts/jquery/jquery-1.10.2.min.js"></script>
    <link href="static/Content/styles/font-awesome.min.css" rel="stylesheet" />
    <link href="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!--框架必需end-->
    <!--bootstrap组件start-->
    <link href="static/Content/scripts/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="static/Content/scripts/bootstrap/bootstrap.min.js"></script>
    <!--bootstrap组件end-->
    <script src="static/Content/scripts/plugins/layout/jquery.layout.js"></script>

    <script src="static/Content/scripts/plugins/datepicker/WdatePicker.js"></script>
    <script src="static/js/plugins/layer/laydate/laydate.js" type="text/JavaScript"></script>

    <link href="static/Content/scripts/plugins/jqgrid/css?v=I4seKUM-8qQy8qhjHvl4WatVLm3gPeI_RbGRY_4d8Z81" rel="stylesheet"/>
    <link href="static/Content/scripts/plugins/tree/css?v=H1Pw5_bJCpzF5OnxCweb5t4XUgVmB2SD2PT8UreOXFA1" rel="stylesheet"/>
    <link href="static/Content/scripts/plugins/datetime/css?v=R2gV65TRaqpUG53uer0IzYRSK0iOi8wNodWtNoeZPpQ1" rel="stylesheet"/>
    <link href="static/Content/styles/learun.css?v=Ty7LTzndRqV52dwtX2Mntj35r2jf8KW5SPI02pjLaKY1" rel="stylesheet"/>

    <script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
    <script src="static/Content/scripts/utils/learunEx.js?v=1nIap1x3I-sL_-dW9qrser-LeiAarqtJj47kmx_XuSA1"></script>
    <script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
    <script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
    <script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
    <script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
    <script src="static/Content/scripts/plugins/jqgrid/js?v=ttfynYH1PjU7ms9MyVeJUzAsIg2Rvst2FhHc8kzv-lc1"></script>

    <style>
        html, body {
            height: 100%;
            width: 100%;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
    </div>
    <div class="ui-layout" id="layout" style="height: 100%; width: 100%;">
        <div class="ui-layout-west">
            <div class="west-Panel" style="border-right: none;" id="newDetp">
                <!--<div class="mail-nav-top">
                    <div id="mailRecv" class="receive option" onclick="btn_addDept()">
                        <i class="fa fa-download"></i>
                        新增
                    </div>
                    <div id="mailSend" class="option" onclick="btn_updateDept()">
                        <i class="fa fa-edit"></i>
                        编辑
                    </div>
                </div>-->
                <div class="profile-nav" style="overflow: auto;">
                    <ul id="nav_email" style="padding-top: 10px;">
                        <li id="登陆" class="active"><i class="fa fa-coffee" style="vertical-align: middle; margin-top: -2px; margin-right: 8px; font-size: 14px; color: #666666; opacity: 0.9;"></i>登陆日志</li>
                        <li id="访问" class=""><i class="fa fa-coffee" style="vertical-align: middle; margin-top: -2px; margin-right: 8px; font-size: 14px; color: #666666; opacity: 0.9;"></i>访问日志</li>
                        <li id="operation" class=""><i class="fa fa-coffee" style="vertical-align: middle; margin-top: -2px; margin-right: 8px; font-size: 14px; color: #666666; opacity: 0.9;"></i>操作日志</li>
                        <li id="异常" class=""><i class="fa fa-coffee" style="vertical-align: middle; margin-top: -2px; margin-right: 8px; font-size: 14px; color: #666666; opacity: 0.9;"></i>异常日志</li>
                        <div class="divide"></div>
                    </ul>
                    <input type="hidden" id="detpid" name="detpid">
                    <div id="myfloderArea">
                        <ul style="display: none;">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="ui-layout-center">
            <div class="center-Panel">
                <div class="profile-content" style="background: #fff; padding: 0px;">
                    <div class="titlePanel">
                        <div class="title-search">
                            <table>
                                <tr>
                                    <td>
                                        &nbsp;操作用户：
                                        <input id="operationType" type="hidden" value="登陆"/>
                                    </td>
                                    <td style="padding-left: 2px;">
                                        <c:if test="${flag=='true'}">

                                            <input id="fullHead" type="text" class="form-control" placeholder="请输入要查询关键字" style="width: 200px;" value=""/>
                                        </c:if>
                                        <c:if test="${flag=='false'}">
                                            <input id="fullHead" type="text" class="form-control" placeholder="请输入要查询关键字" style="width: 200px;" value="${user.username}" readonly/>
                                        </c:if>
                                    </td>
                                    <td>
                                        &nbsp;开始时间:
                                    </td>
                                    <td style="padding-left: 2px;">
                                        <input type="text" class="form-control input-datepicker" readonly="readonly"
                                               name='startTime' id='startTime' value=""
                                               onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" />
                                    </td>
                                    <td>
                                        &nbsp;结束时间:
                                    </td>
                                    <td style="padding-left: 2px;">
                                        <input type="text" class="form-control input-datepicker" readonly="readonly"
                                               name='overTime' id='overTime' value=""
                                               onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" />
                                    </td>
                                    <td style="padding-left: 5px;">
                                        <a id="btn_Search" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;查询</a>
                                        <a id="btn_Reset" class="btn btn-primary"><i class="fa fa-undo"></i>&nbsp;重置</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="toolbar">
                            <div class="btn-group">
                                <a id="lr-replace" class="btn btn-default" onclick="learun.reload();"><i class="fa fa-refresh"></i>&nbsp;刷新</a>
                                <shiro:hasPermission  name="yhgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
                                <a id="lr-empty" class="btn btn-default" onclick="btn_empty()"><i class="fa fa-trash-o"></i>&nbsp;清空</a>
                                <shiro:hasPermission  name="yhgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_detail()"><i class="fa fa-plus"></i>&nbsp;详细</a></shiro:hasPermission>
                                <shiro:hasPermission  name="yhgl:select"><a id="lr-excelExp" class="btn btn-default" onclick="excelExp()"><i class="fa fa-file-excel-o"></i>&nbsp;导出</a></shiro:hasPermission>
                            </div>
                        </div>
                    </div>
                    <div id="gridPanel" style="padding-left: 15px; padding-right: 15px;">
                        <table id="gridTable"></table>
                        <div id="gridPager"></div>
                        <style>
                            .ui-jqgrid-htable th.ui-th-column {
                                background-color: #F7F7F7;
                            }
                        </style>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="loading_manage" style="display: none; left: 648px; top: 197px;">正在为您导出数据，请稍等…</div>
    <!-- layer 弹出层 -->
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
    <script src="static/js/layerutil.js" type="text/javascript"></script>
    <script>


        $(function () {
            InitialPage();
            GetGrid();
        });
        //初始化页面
        function InitialPage() {
            //layout布局
            $('#layout').layout({
                applyDemoStyles: true,
                west__resizable: false,
                west__size: 220,
                spacing_open: 0,
                onresize: function () {
                    $(window).resize()
                }
            });
            $('.profile-nav').height($(window).height()-20);
            $('.profile-content').height($(window).height() - 20);
            //resize重设(表格、树形)宽高
            $(window).resize(function (e) {
                window.setTimeout(function () {
                    $('#gridTable').setGridWidth(($('#gridPanel').width() - 15));
                    $("#gridTable").setGridHeight($(window).height() - 140);
                    $('.profile-nav').height($(window).height() - 20);
                    $('.profile-content').height($(window).height() - 20);
                }, 200);
                e.stopPropagation();
            });
        }
        //加载表格
        function GetGrid() {
            var selectedRowIndex = 0;
            var $gridTable = $('#gridTable');
            var url= "${pageContext.request.contextPath}/admin/system/syslog/listDo.html?operationType=登陆";
            $gridTable.jqGrid({
                url: url,
                datatype: "json",
                height:  $(window).height()-140 ,
                autowidth: true,
                multiselect: true,//复选框
                colModel: [
                    { label: '主键', name: 'id', hidden: true },
                    { label: '类型', name: 'operationType', hidden: true},
                    { label: '操作时间', name: 'createTime', index: 'createTime', width: 200, align: 'left' },
                    { label: '操作用户', name: 'username', index: 'username', width: 70, align: 'left' },
                    { label: 'IP地址', name: 'ip', index: 'ip', width: 150, align: 'left' },
                    { label: '系统功能', name: 'function', index: 'function', width: 150, align: 'left' },
                    { label: '操作类型', name: 'operationType', index: 'operationType', width: 80, align: 'left' },
                    { label: '执行结果', name: 'operationResult', index: 'operationResult', width: 80, align: 'left',
                        formatter: function (cellvalue, options, rowObject) {
                            if(cellvalue=='成功'){
                                return "<span class=\"label label-success\">成功</span>" ;
                            }else {
                                return "<span class=\"label label-danger\">失败</span>" ;
                            }
                        }
                    },
                    { label: '执行结果描述', name: 'operationContent', index: 'operationContent', width: 200, align: 'left' }

                ],
                viewrecords: true,
                rowNum: 15,
                rowList: [15, 30, 100],
                pager: "#gridPager",
                sortname: 'createTime',
                sortorder: 'desc',
                rownumbers: true,
                shrinkToFit: false,
                gridview: true,
                onSelectRow: function () {
                    selectedRowIndex = $("#" + this.userId).getGridParam('selrow');
                },
                gridComplete: function () {
                    $("#" + this.id).setSelection(selectedRowIndex, false);
                }
            });
            //列表left导航事件
            $("#nav_email li").click(function () {
                $("#txt_Keyword").val('');
                $("#lr-delete").show();
                $("#lr-thoroughdelete").show();
                $("#lr-marked").show();
                $("#lr-moveTo").show();
                var operationType = $(this).attr('id');
                $("#operationType").val(operationType);
                var _url = "${pageContext.request.contextPath}/admin/system/syslog/listDo.html?operationType="+operationType;
                $gridTable.jqGrid('setGridParam', {
                    url: _url,
                    page: 1
                }).trigger('reloadGrid');
            });
            //查询事件
            $("#btn_Search").click(function () {
                serach();
            });
            //重置
            $("#btn_Reset").click(function () {
                $("#username").val("");
                $("#startTime").val("");
                $("#overTime").val("");
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
                    username: $("#username").val(),
                    startTime: $("#startTime").val(),
                    overTime: $("#overTime").val(),
                    function: $("#function").val()
                }
                var operationType = $("#operationType").val();
                $gridTable.jqGrid('setGridParam', {
                    postData: { queryJson: JSON.stringify(queryJson) },
                    url: "${pageContext.request.contextPath}/admin/system/syslog/listDo.html?operationType="+operationType,
                    page: 1,

                }).trigger('reloadGrid');
            }
        }


        //获取选中id，返回格式： 1，2，3
        function getSelecteds(){
            //获取多选到的id集合
            var ids = $("#gridTable").getGridParam("selarrrow");
            //遍历访问这个集合
            var idss="";
            $.each(ids, function(idx, obj) {
                var row = $("#gridTable").jqGrid('getRowData', obj);
                idss = idss + "," + row.id;
            });
            if(idss){
                idss=idss.substring(1,idss.length);
            }
            return idss;
        }

        //编辑
        function btn_detail() {
            var id = getSelecteds();
            if((id.split(",")).length>1){
                dialogMsg("只能选择一条数据", 2);
                return;
            }
            if (id) {
                var url='${pageContext.request.contextPath}/admin/system/syslog/detail.html?id='+id;
                dialogOpen({
                    id: "add",
                    title: "日志详细",
                    url: url,
                    width: "1400px",
                    height: "600px",
                    btn: null
                });
            } else {
                dialogMsg("请选择数据！",2);
            }
        }
        //删除
        function btn_delete(ids) {
            //获取单独一行
            //var id = $("#gridTable").jqGridRowValue("userId");
            if(!ids){
                ids = getSelecteds();
            }
            if (ids) {
                layer.confirm('确认删除么?',{icon: 7, title:'提示'}, function(index){
                    $.ajax({
                        url:'${pageContext.request.contextPath}/admin/system/syslog/del.html',
                        data:'ids='+ids+"&time="+new Date(),
                        type:'post',
                        dataType: "json",
                        success: function(data, status, xhr){
                            $("#gridTable").trigger("reloadGrid");
                            layer.close(index);
                        }
                    });
                });
            } else {
                dialogMsg("请选择数据！",2);
            }
        }

        //清空
        function btn_empty() {
            layer.confirm('确认清空么?',{icon: 7, title:'提示'}, function(index){
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/system/syslog/empty.html',
                    data:'operationType='+$("#operationType").val()+"&time="+new Date(),
                    type:'post',
                    dataType: "json",
                    success: function(data, status, xhr){
                        $("#gridTable").trigger("reloadGrid");
                        layer.close(index);
                    }
                });
            });

        }



        function excelExp() {
            var url = '${pageContext.request.contextPath}/admin/system/user/excelExp_o.html';
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
                        a.download = '员工管理数据.xlsx';
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
</body>
</html>
<script>
    (function ($, learun) {
        $(function () {
            learun.childInit();
        })
    })(window.jQuery, window.learun)
</script>