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

    <link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">

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
        .profile-nav li {
            line-height: 0px;
            padding-left: 3px;
            border-left: none;
        }
        .ztree li{
            margin-bottom: 5px;
        }
        .ztree li ul{
            margin-top: 5px;
        }
        .ztree li a.curSelectedNode {
            background-color:#5965b1;
            border:1px #5965b1 solid;
            color: #fff;
        }
         .line{
             position: static;
         }
    </style>
</head>
<body>
<div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
</div>
<div class="ui-layout" id="layout" style="height: 100%; width: 100%;">
    <div class="ui-layout-west">
        <div class="west-Panel" style="border-right: none;" id="newDetp">
            <div class="treeDiv" style="overflow: auto;">
                <ul id="treeDemo" class="ztree" style="height:600px;border:none;width:100%"></ul>
                <input type="hidden" id="companyId" name="companyId" value="">
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
                                <td>&nbsp;账号：</td>
                                <td style="padding-left: 2px;">
                                    <input id="username" type="text" class="form-control"  style="width: 200px;" />
                                </td>
                                <td>&nbsp;姓名：</td>
                                <td style="padding-left: 2px;">
                                    <input id="realName" type="text" class="form-control"  style="width: 200px;" />
                                </td>
                                <td style="padding-left: 5px;">
                                    <a id="btn_Search" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;查询</a>
                                    <a id="btn_Reset" class="btn btn-primary"><i class="fa fa-undo"></i>&nbsp;重置</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="toolbar" >
                        <div class="btn-group  btn-group-sm">
                            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();" title="刷新"><i class="fa fa-refresh"></i></a>
                        </div>
                        <div class=" btn-group btn-group-sm" learun-authorize="yes">
                        <shiro:hasPermission  name="yhgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a></shiro:hasPermission>
                            <shiro:hasPermission  name="yhgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a></shiro:hasPermission>
                            <shiro:hasPermission  name="yhgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
                            <shiro:hasPermission  name="yhgl:czmm"><a id="lr-delete" class="btn btn-default" onclick="btn_resetpassword()"><i class="fa fa-undo"></i>&nbsp;重置密码</a></shiro:hasPermission>
                            <shiro:hasPermission  name="yhgl:select"><a id="lr-excelImp" class="btn btn-default" onclick="excelImp()"><i class="fa fa-sign-in"></i>&nbsp;导入</a></shiro:hasPermission>
                            <shiro:hasPermission  name="yhgl:select"><a id="lr-excelExp" class="btn btn-default" onclick="excelExp()"><i class="fa fa-sign-out"></i>&nbsp;导出</a></shiro:hasPermission>
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
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.exedit.js"></script>

<script>
    (function ($, learun) {
        $(function () {
            learun.childInit();
            $.fn.zTree.init($("#treeDemo"), setting);
        })
    })(window.jQuery, window.learun)
    var setting = {
        async: {
            enable: true,
            url:"${pageContext.request.contextPath}/admin/system/company/tree4user.html",
            autoParam:["id"],
            dataFilter: filter
        },

        check: {
            //enable: true,
            //chkStyle: "radio",
            //radioType: "all"
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "parentId",
                rootPId: "-1"
            }
        },
        callback: {
            beforeClick: beforeClick,
            onAsyncSuccess : ztreeOnAsyncSuccess,//异步加载成功后执行的方法
            onClick: onClick
        },

        view:{
            nameIsHTML:true
        }
    };
    function filter(treeId, parentNode, childNodes) {
        if (!childNodes) return null;
        for (var i=0, l=childNodes.length; i<l; i++) {
            childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
        }
        return childNodes;
    }

    function setCheck() {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            type = {"Y" : "ps", "N" : "ps"};
        zTree.setting.check.chkboxType = type;
    }

    function beforeClick(treeId, treeNode, clickFlag) {
        return (treeNode.click != false);
    }
    function onClick(event, treeId, treeNode, clickFlag) {
        //如果选中
        if(clickFlag=='1'){
            $("#companyId").val(treeNode.id);

            var companyId = $("#companyId").val();
            reloadList(companyId);
        }

    }
    function reloadList(companyId){
        InitialPage();
        GetGrid();
        var _url = "${pageContext.request.contextPath}/admin/system/user/list_o.html?companyId="+companyId;
        $("#gridTable").jqGrid('setGridParam', {
            url: _url,
            page: 1
        }).trigger('reloadGrid');
    }
    //获取树成功后进行的回调操作
    function ztreeOnAsyncSuccess(event, treeId, treeNode) {
        var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
        var nodes = treeObj.getNodes()[0].children;
        var node = nodes[0];//treeObj.getNodeByParam("name", "公司名称1");
        if(node!=null){
            treeObj.selectNode(node);
            $("#companyId").val(node.id);
            reloadList(node.id);
        }
    }

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
        $('.treeDiv').height($(window).height()-20);
        $('.profile-content').height($(window).height() - 20);
        //resize重设(表格、树形)宽高
        $(window).resize(function (e) {
            window.setTimeout(function () {
                $('#gridTable').setGridWidth(($('#gridPanel').width() - 15));
                $("#gridTable").setGridHeight($(window).height() - 140);
                $('.treeDiv').height($(window).height() - 20);
                $('.profile-content').height($(window).height() - 20);
            }, 200);
            e.stopPropagation();
        });
    }
    //加载表格
    function GetGrid() {
        var selectedRowIndex = 0;
        var $gridTable = $('#gridTable');
        var url= "${pageContext.request.contextPath}/admin/system/user/list_o.html?companyId="+$("#companyId").val();
        $gridTable.jqGrid({
            url: url,
            datatype: "json",
            height:  $(window).height()-140 ,
            autowidth: true,
            multiselect: true,//复选框
            colModel: [
                { label: '主键', name: 'userId', hidden: true },
                { label: '账号', name: 'username', index: 'username', width: 70, align: 'left' },
                { label: '姓名', name: 'realName', index: 'realName', width: 60, align: 'left' },
                { label: '部门', name: 'deptId', index: 'deptId', width: 240, align: 'left',
                    formatter: function (cellvalue, options, rowObject) {
                        if(rowObject.deptList){
                            var str="";
                            var json=rowObject.deptList;
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
                { label: '岗位', name: 'postId', index: 'postId', width: 200, align: 'left',
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
                { label: '手机', name: 'mobile', index: 'mobile', width: 100, align: 'left' },
                { label: 'ERP工号', name: 'enCode', index: 'enCode', width: 100, align: 'left' },
                { label: '内网QQ', name: 'qq', index: 'qq', width: 100, align: 'left' },
                { label: '微信', name: 'weChat', index: 'weChat', width: 100, align: 'left' },
                { label: '角色', name: 'role', index: 'role', width: 150, align: 'left',sortable: false,
                    formatter: function (cellvalue, options, rowObject) {
                        if(rowObject.roleList){
                            var str="";
                            var json=rowObject.roleList;
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
                { label: '注册时间', name: 'registerTime', index: 'register_time',  align: 'left' }
            ],
            viewrecords: true,
            rowNum: 15,
            rowList: [15, 30, 100],
            pager: "#gridPager",
            sortname: 'register_time',
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
                username: $("#username").val(),
                realName: $("#realName").val()
            }
            $gridTable.jqGrid('setGridParam', {
                postData: { queryJson: JSON.stringify(queryJson) },
                url: "${pageContext.request.contextPath}/admin/system/user/list_o.html?companyId="+$("#companyId").val(),
                page: 1,

            }).trigger('reloadGrid');
        }

        //重置
        $("#btn_Reset").click(function () {
            $("#username").val("");
            $("#realName").val("");
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
            idss = idss + "," + row.userId;
        });
        if(idss){
            idss=idss.substring(1,idss.length);
        }
        return idss;
    }
    //新增
    function btn_add() {
        var url="${pageContext.request.contextPath}/admin/system/user/insert_v.html?companyId="+$("#companyId").val();
        dialogOpen({
            id: "add",
            title: "新增用户",
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
            var url='${pageContext.request.contextPath}/admin/system/user/update_v.html?type=system&userId='+id;
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
        //var id = $("#gridTable").jqGridRowValue("userId");
        if(!ids){
            ids = getSelecteds();
        }
        if (ids) {
            layer.confirm('确认删除么?',{icon: 7, title:'提示'}, function(index){
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/system/user/del_o.html',
                    data:'userIds='+ids+"&time="+new Date(),
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

    //重置密码
    function btn_resetpassword() {
        var id = getSelecteds();
        if((id.split(",")).length>1){
            dialogMsg("只能选择一条数据进行重置密码", 2);
            return;
        }
        if (id) {
            layer.confirm('确认重置密码为："111111" 么?',{icon: 7, title:'提示'}, function(index){
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/system/user/resetpassword_o.html',
                    data:'userId='+id+"&time="+new Date(),
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

    //导入
    function excelImp() {
        var url="${pageContext.request.contextPath}/admin/system/user/excelImp_v.html";
        dialogOpen({
            id: "excelImp",
            title: "数据导入（亲！请根据模板填充数据，否则导入的数据可能不是您的预期哦）",
            url: url,
            width: "600px",
            height: "400px",
            btn: null
        });
    };
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
                    a.download = '员工管理数据'+new Date().format("yyyyMMddhhmmss")+'.xlsx';
                    a.href = e.target.result;
                    $("body").append(a);  // 修复firefox中无法触发click
                    a.click();
                    $(a).remove();
                }
            }else if (this.status === 500) {
                dialogAlert("服务器出错，请联系管理员");
                $("#loading_manage").hide();
                $("#lr-excelExp").html("导出");
            }
        };
        // 发送ajax请求
        xhr.send()
    }
</script>

<script>
    Date.prototype.format = function(fmt) {
        var o = {
            "M+" : this.getMonth()+1,                 //月份
            "d+" : this.getDate(),                    //日
            "h+" : this.getHours(),                   //小时
            "m+" : this.getMinutes(),                 //分
            "s+" : this.getSeconds(),                 //秒
            "q+" : Math.floor((this.getMonth()+3)/3), //季度
            "S"  : this.getMilliseconds()             //毫秒
        };
        if(/(y+)/.test(fmt)) {
            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        }
        for(var k in o) {
            if(new RegExp("("+ k +")").test(fmt)){
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
            }
        }
        return fmt;
    }
</script>
</body>
</html>