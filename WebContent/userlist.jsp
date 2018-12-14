<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
<table style="margin-left: 33%">
<tr><h2 style="text-align: center;">欢迎使用</h2></tr>
<tr>

<td><a href="index.jsp">返回主页</a></td></tr>
<tr><td>id</td><td>用户名</td><td>密码</td></tr>
 <tr>
 <c:forEach items="${list}" var="useraction">
<td>${useraction.id}</td>
<td>${useraction.name }</td>
<td>${useraction.password }</td>

<td>
<form action="${pageContext.request.contextPath }/update_user.jsp?id=${useraction.id}" method="post">
<input type="text" value="${useraction.id }" name="id" style="display: none;">
<input type="submit" value="修改" ></span>
</form></td>

<td>
<form action="${pageContext.request.contextPath }/User_delete.action" method="post">
<input type="text" value="${useraction.id }" name="id" style="display: none;">
<input type="submit" value="删除" onclick="return confirm('确定删除吗')">
</form>
</td>

</tr>
</c:forEach>
</table>
</body>
</html>