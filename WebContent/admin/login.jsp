<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
<dir style="text-align: center;">


<form action="${pageContext.request.contextPath }/User_adminlogin.action" method="post">
<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
<br>欢迎管理员登录<br>
<br/>
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
</dir>
</body>
</html>