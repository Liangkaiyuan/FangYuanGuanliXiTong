<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加房源</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
	<div style="text-align: center;">
		<%
			int id = Integer.parseInt(request.getParameter("id"));
		%>

			<div class="body">
				<div class="vli">
					<div class="wrapper move">
						<div id="register">
							<tr>
								<h3>添加出售房源</h3>
							</tr>
 
							<form
								action="${pageContext.request.contextPath }/Room_insert.action"
								method="post">
								<div class="vali">
									<input type="text" name="u_id" value=<%=id%>
										style="display: none;">
								</div>
								<div class="vali">

									类型：<input type="text" name="leixing">
								</div>
								<div class="vali">
									价钱：<input type="text" name="price">
								</div>
								<div class="vali">
									小区：<input type="text" name="xiaoqu">
								</div>
								<div class="vali">
									地址：<input type="text" name="addrs">
								</div>
								<div class="vali">
									户主：<input type="text" name="name">
								</div>
								<div class="vali">
									电话：<input type="text" name="phone">
								</div>
								<input type="submit" class="btn" id="check" value="发布"><br />
							</form>
		</dir>
	</div>
</body>
</html>