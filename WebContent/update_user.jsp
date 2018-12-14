<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="com.lky.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
<div style="text-align: center;">
<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
<%User user = (User) session.getAttribute("user1"); %>
欢迎<%=user.getName() %>登录
id:<%=user.getId() %>
用户名：<%=user.getName() %>
密码：<%=user.getPassword() %>
<%
int id=Integer.parseInt(request.getParameter("id"));
%>
<form action="${pageContext.request.contextPath }/User_update.action" method="post">
<div class="vali">
<input type="text" name="id" value=<%=id %> style="display: none;">
</div>
<div class="vali">
用户名：<input type="text" name="name" value="<%=user.getName() %>">
</div>
<div class="vali">
密码：<input type="text" name="password">
</div>
 <input type="submit" class="btn" id="check" value="确认修改">
</form>
</div>
			</div>
		</div>
	</div>	 	

</div>
 
</body>
</html>