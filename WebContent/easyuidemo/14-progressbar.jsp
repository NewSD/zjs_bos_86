<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>区域设置</title>
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<!-- 导入easyui类库 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/ext/portal.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/default.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/ext/jquery.portal.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/ext/jquery.cookie.js"></script>
<script
	src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>

</head>
<body class="easyui-layout">
	<input id="btn" type="button" value="test" />
	<div id="pb" class="easyui-progressbar"
		style="visibility:hidden;background:green;"></div>
</body>
</html>
<script type="text/javascript">
	$('#pb').progressbar({
		// 设置进度条宽度
		width : '400',
		// 设置进度条高度
		height : '100',
		//设置进度条值
		value : '0',
		// 设置进度条百分比模版
		text : '{value}%',
		// 在值更改的时候触发
		onChange : function(newValue, oldValue) {

		},
	});
	$("#btn").click(function() {
		$("#pb").css({visibility:"visible",zIndex:1000});
	});
</script>