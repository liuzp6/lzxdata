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

    <%--<link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/demo.css" type="text/css">--%>
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
                        </table>
                    </div>
                    <div class="toolbar">
                        <div class="btn-group">
                            <a id="lr-replace" class="btn btn-default" onclick="learun.reload();"><i class="fa fa-refresh"></i>&nbsp;刷新</a>
                            <shiro:hasPermission  name="bmgl:insert"><a id="lr-add" class="btn btn-default" onclick="btn_add()"><i class="fa fa-plus"></i>&nbsp;新增</a></shiro:hasPermission>
                            <shiro:hasPermission  name="bmgl:update"><a id="lr-edit" class="btn btn-default" onclick="btn_edit()"><i class="fa fa-pencil-square-o"></i>&nbsp;编辑</a></shiro:hasPermission>
                            <shiro:hasPermission  name="bmgl:del"><a id="lr-delete" class="btn btn-default" onclick="btn_delete()"><i class="fa fa-trash-o"></i>&nbsp;删除</a></shiro:hasPermission>
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
            url:"${pageContext.request.contextPath}/admin/system/company/tree4dept.html",
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
        }else{
            //没选中则为0
            $("#companyId").val('0');
        }
        var companyId = $("#companyId").val();
        reloadList(companyId);
    }
    function reloadList(companyId){
        InitialPage();
        GetGrid();
        var _url = "${pageContext.request.contextPath}/admin/system/dept/list_o.html?companyId="+companyId;
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
            //alert($("#companyId").val());
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
        var url= "${pageContext.request.contextPath}/admin/system/dept/list_o.html?companyId="+$("#companyId").val();
        $gridTable.jqGrid({
            url: url,
            datatype: "json",
            height:  $(window).height()-140 ,
            autowidth: true,
            multiselect: true,//复选框
            //colNames:['id',nameFormat,'type'],
            colModel: [
                { label: '主键', name: 'id', hidden: true },
                { label: "部门名称", name: "name", width: 300, align: "left", sortable: false },
                { label: "上级部门", name: "parentId",  hidden: true},
                { label: "部门编号", name: "enCode", width: 100, align: "left", sortable: false },
                { label: "负责人", name: "manager", width: 100, align: "left", sortable: false },
                { label: "电话号", name: "outerPhone", width: 100, align: "left", sortable: false },
                { label: "分机号", name: "innerPhone", width: 100, align: "left", sortable: false },
                { label: "邮箱", name: "email", width: 100, align: "left", sortable: false },
                { label: "传真", name: "fax", width: 100, align: "left", sortable: false },
                { label: "备注", name: "description", width: 300, align: "left", sortable: false }
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
    var nameFormat= '<label>'+
        '<input type="checkbox" class="ace" id="chxCheckAll">'+
        '<span class="lbl align-top" >名称</span>'+
        '</label>';
    function showName( cellvalue, options, cell ) {
        var rowId = cell.id;
        var checkbox = '<label >'+
            '<input type="radio" id="chx'+rowId+'" class="ace" value="'+rowId+'" onclick="clickCheckbox('+rowId+', this);" name="radiocheck"/>'+
            '<span class="lbl align-top" ></span>'+
            cell.name +
            '</label>';
        return  checkbox ;
    }
    //全选/全不选
    $("#chxCheckAll").on('click', function(){
        $("input[id^='chx']").each(function(){
            $(this).prop("checked", $("#chxCheckAll").is(':checked'));
        });
    });

    //checkbox事件
    clickCheckbox = function clickCheckbox(rowid, $this) {
        checkChildren(rowid,$this);
        if($($this).is(':checked')){
            checkParent(rowid, $this);
        }else{
            $("#chxCheckAll").prop("checked",false);
        }
    };
    //递归选中子节点
    function checkChildren(rowid,$this){
        var records = $('#gridTable').jqGrid('getNodeChildren',$('#gridTable').jqGrid("getLocalRow", rowid));
        if(records.length>0){
            for (var i=0;i<records.length;i++){
                var cb = $("#chx"+records[i].id);
                cb.prop("checked", $($this).is(':checked'));
                checkChildren(records[i].id,cb);
            }
        }
    }
    //递归选中父节点
    function checkParent(rowid, $this){
        var parent = $('#gridTable').jqGrid('getNodeParent',$('#gridTable').jqGrid("getLocalRow", rowid));
        if(parent){
            var cb = $("#chx"+parent.id);
            cb.prop("checked", $($this).is(':checked'));
            checkParent(parent.id,cb);
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

    //新增
    function btn_add() {
        var id = $("#gridTable").jqGridRowValue("id");
        var url="${pageContext.request.contextPath}/admin/system/dept/insert_v.html?companyId="+$("#companyId").val()+"&parentId="+id;
        dialogOpen({
            id: "add",
            title: "添加",
            url: url,
            width: "800px",
            height: "500px",
            btn: null
        });
    };
    //编辑
    function btn_edit() {
        var id = $("#gridTable").jqGridRowValue("id");
        if (id) {
            var url="${pageContext.request.contextPath}/admin/system/dept/update_v.html?id="+id;
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
        if (id) {
            layer.confirm('确认删除么?', {icon: 3, title:'提示'}, function(index){
                var index1 = layer.load(1, {
                    shade: [0.1,'#fff'] //0.1透明度的白色背景
                });
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/system/dept/delete_o.html',
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
    }
</script>
</body>
</html>