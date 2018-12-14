<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
<div style="text-align: center;">

<%
int id=Integer.parseInt(request.getParameter("id"));
String leixing=request.getParameter("leixing");
String price=request.getParameter("price");
String xiaoqu=request.getParameter("xiaoqu");
String addrs=request.getParameter("addrs");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
%>
 
<form action="${pageContext.request.contextPath }/Room_update.action" method="post">
<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
<h2>更改房源信息</h2>
<div class="vali">
<input type="text" name="id" value=<%=id %> size="30" autocomplete="off" style="display:none;">
</div><div class="vali">
户型：<input type="text" name="leixing" value=<%=leixing %> autocomplete="off">
</div><div class="vali">
价钱：(数字)<input type="text" name="price" value=<%=price %> autocomplete="off">
</div><div class="vali">
所在小区：<input type="text" name="xiaoqu" value=<%=xiaoqu %> autocomplete="off">
</div><div class="vali">
所在地址：<input type="text" name="addrs" value=<%=addrs %> autocomplete="off">
</div><div class="vali">
联系人：<input type="text" name="name" value=<%=name %> autocomplete="off">
</div><div class="vali">
电话：<input type="text" name="phone" value=<%=phone %> autocomplete="off">
</div> 
 <input type="submit" value="确认修改">
 
</form>
	</div>
			</div>
		</div>
	</div>	 	
</div>
</body>
</html>