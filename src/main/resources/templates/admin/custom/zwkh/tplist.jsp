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
    <!-- layer 弹出层 -->
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
    <script src="static/js/layerutil.js" type="text/javascript"></script>
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
                <input type="hidden" id="postId" name="postId" value="">
                <input type="hidden" id="customIds" name="customIds" value="${customIds}">
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
                                <td>&nbsp;用户名：</td>
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
                            <div class="btn-group">
                                <a id="lr-tpzwyh" class="btn btn-default" onclick="btn_tpzwyh()"><i class="fa fa-hand-o-up"></i>&nbsp;点击进行调配</a>
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
            url:"${pageContext.request.contextPath}/admin/custom/zwkh/tree4post.html",
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
            $("#postId").val(treeNode.id);

            var postId = $("#postId").val();
            reloadList(postId);
        }

    }
    function reloadList(postId){
        InitialPage();
        GetGrid();
        var _url = "${pageContext.request.contextPath}/admin/custom/zwkh/userslist_v.html?postId="+$("#postId").val()
        $("#gridTable").jqGrid('setGridParam', {
            url: _url,
            page: 1
        }).trigger('reloadGrid');
    }
    //获取树成功后进行的回调操作
    function ztreeOnAsyncSuccess(event, treeId, treeNode) {
        var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
        var node = treeObj.getNodes()[0];
        //var node = nodes[0];//treeObj.getNodeByParam("name", "公司名称1");
        if(node!=null){
            treeObj.selectNode(node);
            $("#postId").val(node.id);
            //
            reloadList(node.id);
        }
    }

    //初始化页面
    function InitialPage() {
        //layout布局
        $('#layout').layout({
            applyDemoStyles: true,
            west__resizable: false,
            west__size: 250,
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
        var url= "${pageContext.request.contextPath}/admin/custom/zwkh/userslist_v.html?postId="+$("#postId").val();
        $gridTable.jqGrid({
            url: url,
            datatype: "json",
            height:  $(window).height()-140 ,
            autowidth: true,
            multiselect: false,//复选框
            colModel: [
                { label: '主键', name: 'userId', hidden: true },
                { label: '姓名', name: 'realName', index: 'realName', width: 100, align: 'left' },
                { label: '部门', name: 'deptId', index: 'deptId', width: 130, align: 'left',
                    formatter: function (cellvalue, options, rowObject) {
                        if(rowObject.dept){
                            return rowObject.dept.name ;
                        }else {
                            return "" ;
                        }
                    }
                },
                { label: '岗位', name: 'postId', index: 'postId', width: 220, align: 'left',
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
                username: $("#username").val(),
                realName: $("#realName").val()
            }
            $gridTable.jqGrid('setGridParam', {
                postData: { queryJson: JSON.stringify(queryJson) },
                url: "${pageContext.request.contextPath}/admin/custom/zwkh/userslist_v.html?postId="+$("#postId").val(),
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

    //获取选中id
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

    // 调配在网客户
    function btn_tpzwyh() {
        var id = $("#gridTable").jqGridRowValue("userId")
          if(!id){
              dialogMsg("选择一条数据", 2);
              return;
          }
          alert($("#customIds").val());
        if (id) {
            layer.confirm('确认调配么?',{icon: 7, title:'提示'}, function(index){
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/custom/zwkh/tiaopei_o.html',
                    data:'userId='+id+"&time="+new Date()+'&customIds='+$("#customIds").val(),
                    type:'post',
                    dataType: "json",
                    success: function(data, status, xhr){
                        $.currentIframe().$("#gridTable").trigger("reloadGrid");
                        layer_close();
                    }
                });
            });
        }
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