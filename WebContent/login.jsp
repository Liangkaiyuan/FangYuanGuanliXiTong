<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="com.lky.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
<div style="text-align: center;">

<br />
<%User user = (User) session.getAttribute("user1"); %>
<%if (user==null){%>
<a href="${pageContext.request.contextPath }/Room_list_index.action">返回主页</a>
	<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
<form action="${pageContext.request.contextPath }/User_save.action" method="post">

<br>欢迎注册<br>
<div class="vali">
		用户名：<input type="text" name="name" value=""  placeholder="请输入用户名"  maxlength="20" size="30" autocomplete="off">
			</div>
<div class="vali">
	密码：<input type="password" name="password" value="" placeholder="请填写长度为6-20个字符的密码" class="pasw"  size="33" maxlength="20" autocomplete="off">
			</div>
			<input type="submit" class="btn" id="check" value="注册" >
 <br />
</form>

<br /><br /><br />
<form action="${pageContext.request.contextPath }/User_login.action" method="post">
<br>欢迎登录<br>
<div class="vali">
		用户名：<input type="text" name="name" value=""  placeholder="请输入用户名"  maxlength="20" size="30" autocomplete="off">
			</div>
<div class="vali">
	密码：<input type="password" name="password" value="" placeholder="请填写长度为6-20个字符的密码" class="pasw"  size="33" maxlength="20" autocomplete="off">
			</div>
			<input type="submit" class="btn" id="check" value="登录" >
 <br />
</form>
					</div>
			</div>
		</div>
	</div>	 	




<%}else{%>
欢迎<%=user.getName() %>登录
id:<%=user.getId() %>
用户名：<%=user.getName() %>
密码：<%=user.getPassword() %>
<br/>
<a href="${pageContext.request.contextPath }/login_success.jsp">返回用户中心</a>
<%} %>


  
</div>


 
</body>
</html>