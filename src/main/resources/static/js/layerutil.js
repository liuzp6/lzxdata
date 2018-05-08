/*弹出层*/
/*
	参数解释：
	title	标题
	url		请求的url
	id		需要操作的数据id
	w		弹出层宽度（缺省调默认值）
	h		弹出层高度（缺省调默认值）
*/
function layer_show(title,url,w,h){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=800;
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	layer.open({
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //不固定
		maxmin: true,
		shade : 0.3,
		title: title,
		content: url,
		
		zIndex: layer.zIndex, //重点1
		success: function(layero){
		    layer.setTop(layero); //重点2
		}
	});
}
/*关闭弹出框口*/
function layer_close(){
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

/*ajax全局session过滤*/
$.ajaxSetup({
    complete:function(xhr, status) {
        if(xhr.getResponseHeader("sessionstatus")=="timeOut"){  
    		layer.alert("会话过期，请重新登陆",function(){
    			var top = getTopWinow();
        		top.location.href = 'login.html';
			});
        }  
    }
});
function getTopWinow(){
  var p = window;
  while(p != p.parent){
    p = p.parent;
  }
  return p;
}