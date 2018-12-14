<%@ page language="java" pageEncoding="utf-8"%>
<html>
  <head>
  	 <%
   	request.getSession().removeAttribute("user1");
   %>
   <script>
   window.location.href="${pageContext.request.contextPath }/index.jsp";
   </script>
  </head>
  
  <body>
  
  </body>
</html>
