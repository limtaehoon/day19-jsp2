<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String name =request./*(내장객체)*/getParameter("name");//입력
String addr = request./*(내장객체)*/getParameter("addr");
//out.println(name);//출력
//out.println(addr);

%>
<body>
이름:<%=name %><br>
주소:<%=addr %><br>
</body>
</html>