<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();//session 失效
//session.removeAttribute("uname");
response.sendRedirect("login.jsp");
%>
</body>
</html>