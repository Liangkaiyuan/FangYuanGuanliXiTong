<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出售信息</title>
</head>
<body>
<table style="margin-left: 33%">
<tr><h2 style="text-align: center;">欢迎使用</h2></tr>
<div style="text-align: center;">
<%-- <a href="${pageContext.request.contextPath }/Room_list_index.action">返回主页</a> --%>
<br />
 
</div>
<br/>
<tr><th>id</th><th>类型</th><th>价钱</th><th>小区</th><th>地址</th><th>联系人</th><th>联系电话</th></tr>
 
 <tr><c:forEach items="${list}" var="roomaction">
<td>&nbsp;${roomaction.id}</td>
<td>&nbsp;${roomaction.leixing }</td>
<td>&nbsp;${roomaction.price }</td>
<td>&nbsp;${roomaction.xiaoqu }</td>
<td>&nbsp;${roomaction.addrs }</td>
<td>&nbsp;${roomaction.name }</td>
<td>&nbsp;${roomaction.phone }</td>
</tr>
</c:forEach>
</table>
</body>
</html>