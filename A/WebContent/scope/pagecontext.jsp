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
pageContext.setAttribute("hello","world");
//当前页面有效   页面跳转无效
//request 同一次请求有效 其他请求无效    请求页面转发有效 重定向无效
//session同一次会话有效 无论页面怎么跳转   关闭切换后无效
//application 全局变量 整个项目运行期间有效 切换浏览器有效
//关闭服务、其他项目无效
//尽量用小的 损耗少
request.getRequestDispatcher("pc1.jsp").forward(request, response);
%>
<%=pageContext.getAttribute("hello") %>
</body>
</html>