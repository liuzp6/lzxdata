<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${settings.title} - 基本表单</title>
	<meta name="keywords" content="${settings.keywords}">
	<meta name="description" content="${settings.keywords}">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>新增客户</title>
	<!--框架必需start-->
	<script src="static/Content/scripts/jquery/jquery-1.10.2.min.js"></script>
	<link href="static/Content/styles/font-awesome.min.css" rel="stylesheet" />
	<link href="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<script src="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!--框架必需end-->
	<!--bootstrap组件start-->
	<link href="static/Content/scripts/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link href="static/Content/scripts/bootstrap/bootstrap.extension.css" rel="stylesheet" />
	<script src="static/Content/scripts/bootstrap/bootstrap.min.js"></script>
	<!--bootstrap组件end-->
	<script src="static/Content/scripts/plugins/datepicker/WdatePicker.js"></script>
	<link href="static/Content/scripts/plugins/tree/css?v=H1Pw5_bJCpzF5OnxCweb5t4XUgVmB2SD2PT8UreOXFA1" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/datetime/css?v=R2gV65TRaqpUG53uer0IzYRSK0iOi8wNodWtNoeZPpQ1" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/wizard/css?v=W_wrFuN6q7PYaBxT6Agjqz3dwFYf6-aOJd-mk2R7Hvg1" rel="stylesheet"/>
	<link href="static/Content/styles/learun.css?v=Ty7LTzndRqV52dwtX2Mntj35r2jf8KW5SPI02pjLaKY1" rel="stylesheet"/>

	<script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
	<script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
	<script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
	<script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
	<script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
	<script src="static/js/plugins/layer/laydate/laydate.js" type="text/JavaScript"></script>

</head>
<body>
<div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
</div>
<form id="myform">
	<div id="form-body" style="overflow: auto;">
		<div style="margin-top: 20px; margin-right: 30px;">
			<table class="form" style="table-layout: auto;">
				<input type="hidden" class="form-control" name="status" id="status" value="在网" >
				<tr>
					<th class="formTitle">社会信用代码:</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="shxydm" id="shxydm" value="" >
					</td>
					<th class="formTitle">客户名称:<font face="宋体">*</font></th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="khmc" id="khmc" value="" >
					</td>
				</tr>
				<tr>
					<th class="formTitle">使用业务:<font face="宋体">*</font></th>
					<td class="formValue custmerTd">
						<select id="syyw" name="syyw" class="form-control" style="color: #000000;">
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
					<th class="formTitle">挖掘日期:<font face="宋体">*</font></th>
					<td class="formValue custmerTd" data-type="datetime">
						<input type="text" class="form-control input-datepicker" readonly="readonly"
							   name='wjrq' id='wjrq' value=""
							   onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" />
					</td>
				</tr>
				<tr>
					<th class="formTitle">单位性质:<font face="宋体">*</font></th>
					<td class="formValue custmerTd">
						<select id="dwxz" name="dwxz" class="form-control" style="color: #000000;">
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
					<th class="formTitle">是否对创新业务有需求:<font face="宋体">*</font></th>
					<td class="formValue custmerTd">
						<select id="sfdcx" name="sfdcx" class="form-control" style="color: #000000;">
							<option value="">请选择</option>
							<option value="暂无需求">暂无需求</option>
							<option value="需求旺盛">需求旺盛</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="formTitle">是否聚焦行业:</th>
					<td class="formValue custmerTd">
						<select id="jjhy" name="jjhy" class="form-control" style="color: #000000;">
							<option value="">请选择</option>
							<option value="教育">教育</option>
							<option value="医疗">医疗</option>
							<option value="政务">政务</option>
							<option value="生态环保">生态环保</option>
							<option value="交通旅游">交通旅游</option>
							<option value="工业制造">工业制造</option>
							<option value="农业">农业</option>
						</select>
					</td>
					<th class="formTitle">创新业务收入规模:</th>
					<td class="formValue custmerTd">
						<select id="srgm" name="srgm" class="form-control" style="color: #000000;">
							<option value="">请选择</option>
							<option value="100万及以上收入">100万及以上收入</option>
							<option value="100万以下收入">100万以下收入</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="formTitle">创新业务需求类型:</th>
					<td class="formValue custmerTd">
						<select id="xqlx" name="xqlx" class="form-control" style="color: #000000;">
							<option value="">请选择</option>
							<option value="大数据">大数据</option>
							<option value="云计算">云计算</option>
							<option value="物联网">物联网</option>
							<option value="IDC">IDC</option>
							<option value="ICT">ICT</option>
							<option value="综合信息化">综合信息化</option>
						</select>
					</td>
					<th class="formTitle">行业大客户分类:<font face="宋体">*</font></th>
					<td class="formValue custmerTd" >
						<select id="hydkh" name="hydkh" class="form-control" style="color: #000000;">
							<option value="">请选择</option>
							<option value="普通大客户">普通大客户</option>
							<option value="专项名单制大客户">专项名单制大客户</option>
							<option value="重点攻坚名单制大客户">重点攻坚名单制大客户</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="formTitle">其他:</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="qt" id="qt" value="" >
					</td>

				</tr>
			</table>
		</div>
	</div>
	<div class="form-button" id="wizard-actions">
		<a class="btn btn-success" onclick="AcceptClick('Y')">提交</a>
	</div>
	<div id="selectUserList_background" style="display: none; width: 100%; height: 100%; opacity: 0.0; filter: alpha(opacity=00); background: #fff; position: absolute; top: 0; left: 0; z-index: 100;"></div>
	<div id="selectUserList" style="box-shadow: 0 0px 12px rgba(0,0,0,.175); position: fixed; top: 0px; left: 1100px; z-index: 101; width: 230px; border-left: 1px solid #ccc; background: #fff; overflow: hidden; overflow-y: auto; display: none;">
	</div>

	<input name="__RequestVerificationToken" type="hidden" value="6GEBVzr2OUes72xMjMJuDbqgyM19QA-TYxrAUNqxyb8_jATbxM9KN59VKp0bfkvZFjSU0thx1OKU3SyxbV2jsuE2wwWclFGYO73Zf0u_4_A1" />
</form>
<!-- 上传js -->
<script type="text/javascript" src="static/js/mywebupload/upload.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.exedit.js"></script>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
        path=/zwkh/;
    });
</script>
<script>
    //保存表单
    var flag = false;
    function AcceptClick(sendStatus) {
        var khmc=$("#khmc").val();
        if (!khmc) {
            top.dialogTop('请填写客户名称', 'error');
            return false;
        }
        if ($("#syyw").val() == "") {
            top.dialogTop('请选择使用业务', 'error');
            return false;
        }
        if ($("#wjrq").val() == "") {
            top.dialogTop('请填写挖掘日期', 'error');
            return false;
        }
        if ($("#dwxz").val() == "") {
            top.dialogTop('请选择单位性质', 'error');
            return false;
        }
        if ($("#sfdcx").val() == "") {
            top.dialogTop('请选择是否对创新业务有需求', 'error');
            return false;
        }
        if ($("#hydkh").val() == "") {
            top.dialogTop('请选择行业大客户分类', 'error');
            return false;
        }
        $.ajax({
            url: "${pageContext.request.contextPath}/admin/custom/zwkh/khmcajaxadd_o.html",
            type: 'POST',
            async: false,
            dataType:"json",
            data:{"khmc":khmc},
            success:function (msg) {
                if (msg =="1"){
                    top.dialogTop("客户名称重复", 'error');
                    flag = false;
                    return false;
                }else {
                    flag = true;
                    return true;
                }
            }
        })
        if(flag == false){
            return false;
        }
        $.SaveForm({
            url: "${pageContext.request.contextPath}/admin/custom/zwkh/insert_o.html",
            param: $('#myform').serialize(),
            loading: "提交",
            success: function () {
                $.currentIframe().$("#gridTable").trigger("reloadGrid");
            }
        })
    }
</script>
<script>
    $(function () {
        learun.childInit();
    })
</script>
