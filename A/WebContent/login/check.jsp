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
request.setCharacterEncoding("utf-8");
String name=request.getParameter("uname");
String pwd=request.getParameter("upwd");
if (name.equals("zs")&&pwd.equals("abc")){
	//response.sendRedirect("success.jsp");重定向     数据丢失     两次请求
	//请求转发   地址不变    保留第一次请求时的数据     一次请求
	request.getRequestDispatcher("success.jsp").forward(request,response);
}else{
	out.print("用户名或密码有误！");
}

%>
</body>
</html>