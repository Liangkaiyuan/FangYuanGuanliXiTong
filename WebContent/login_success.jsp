<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.lky.bean.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录成功</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
</head>
<body>
	<div style="text-align: center;">
		<div class="body">
			<div class="vli">
				<div class="wrapper move">
					<div id="register">

						<tr>
							<h2 style="text-align: center;">欢迎登录</h2>
						</tr>
						<tr>

							<%
								User user = (User) session.getAttribute("user1");
							%>
							<%
								if (user == null) {
							%>
							<script type="text/javascript">
								window.location.href = "${pageContext.request.contextPath }/login.jsp";
							</script>
							<%
								} else {
							%>
							欢迎<%=user.getName()%>登录 id:<%=user.getId()%>
							用户名：<%=user.getName()%>
							密码：<%=user.getPassword()%>
							<br/>
							<a href="exit.jsp">退出登录</a>
							<%
								}
							%>

							<td><a
								href="${pageContext.request.contextPath }/Room_list_index.action">返回主页</a></td>
						</tr>
						<tr>
							<td><br />
							<br />
								<form
									action="${pageContext.request.contextPath }/User_roomlist.action"
									method="post">
									<input type="text" value="<%=user.getId()%>" name="id"
										style="display: none;"> <input type="submit"
										class="btn" id="check" value="查询我的发布">
								</form>
						</tr>
						<form
							action="${pageContext.request.contextPath }/addRoom.jsp?id=<%=user.getId() %>"
							method="post">
							<input type="text" value="<%=user.getId()%>" name="id"
								style="display: none;"> <input type="submit" class="btn"
								id="check" value="添加客房信息"></span>

						</form>
						</td>
						</tr>

						<tr>
							<td> 
								<form
									action="${pageContext.request.contextPath }/update_user.jsp?id=<%=user.getId() %>"
									method="post">
									<input type="text" value="<%=user.getId()%>" name="id"
										style="display: none;"> <input type="submit"
										class="btn" id="check" value="修改用户信息"></span>
								</form></td>
						</tr>

						</td>
						</tr>
					</div>
				</div>
			</div>

		</div>

	</div>




</body>
</html>