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
String[] hobbies=request.getParameterValues("uhobbies");
%>
注册成功，信息：<br/>
姓名：<%=name %><br/>
爱好：<br/>
<%
if(hobbies!=null){
	for(String hobby:hobbies)
{
		out.print(hobby+"&nbsp;");
}
}
%>
</body>
</html>