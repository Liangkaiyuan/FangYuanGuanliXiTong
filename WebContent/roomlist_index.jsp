<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出售信息</title>


<style>
*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    /* background: rgba( 71, 147, 227, 1); */
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: rgb(8, 13, 34);
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 14px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #609ad4;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
</style>



</head>

<body>
<div class="table-wrapper">
 <table class="fl-table">
 <tr>
  
<span><th><a href="${pageContext.request.contextPath }/login.jsp" style="text-decoration: none"><h2>用户中心</h2></a></th><th><h2 style="text-align: center;">房源首页</h2></th><th> <a href="${pageContext.request.contextPath }/admin/login.jsp" class="ma" style="text-decoration: none"><h2>管理员入口</h2></a></span>
 </tr> </table></div>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>id</th>
            <th>房型</th>
            <th>价钱/万</th>
            <th>小区</th>
            <th>地址</th>
            <th>户主</th>
            <th>联系电话</th>
        </tr>
        </thead>
        <tbody>
  <c:forEach items="${list}" var="roomaction">
        <tr>
       	<td>&nbsp;${roomaction.id}</td>
		<td>&nbsp;${roomaction.leixing }</td>
		<td>&nbsp;${roomaction.price }</td>
		<td>&nbsp;${roomaction.xiaoqu }</td>
		<td>&nbsp;${roomaction.addrs }</td>
		<td>&nbsp;${roomaction.name }</td>
		<td>&nbsp;${roomaction.phone }</td>
        </tr>
       </c:forEach>
        <tbody>
    </table>
</div>

 
 
 
</body>
</html>
