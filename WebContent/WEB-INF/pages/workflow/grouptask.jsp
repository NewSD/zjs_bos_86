<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags"  prefix="s"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<div data-options="region:'center'">
		<table class="easyui-datagrid" fit="true" nowrap="false">
			<thead>
				<tr>
					<th data-options="field:'id',width:120">任务编号</th>
					<th data-options="field:'name',width:120">任务名称</th>
					<th data-options="field:'data',width:520">业务数据</th>
					<th data-options="field:'pick',width:120">拾取任务</th>
				</tr>
			</thead>
			<script type="text/javascript">
				function showData(taskId){
					$.post("${pageContext.request.contextPath}/taskAction_showData.action",
							{"taskId":taskId},function(data){
						$("#div"+taskId).html(data);
					});
				}
				
				function toggleData(taskId){
						$("#div"+taskId).toggle();
				}
			</script>
			<tbody>
			
				<s:iterator value="list" var="task">
					<tr>
						<td><s:property value="id"/> </td>
						<td><s:property value="name"/></td>
						<td>
							<a onclick="toggleData('${id}')" class="easyui-linkbutton">查看业务数据</a>
							<div style="display: none" id="div${id }">
								<script type="text/javascript">
									showData('${id}');
								</script>
							</div>
						</td>
						<td>
							<s:a action="taskAction_takeTask" namespace="/" cssClass="easyui-linkbutton">拾取
								<s:param name="taskId" value="id"></s:param>
							</s:a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>

</html>