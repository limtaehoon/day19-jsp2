<%@page import="com.exam.ScoreBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	ScoreBean sb = new ScoreBean();//Bean객체 만들어서 
	sb.setName(name);//Bean 으로 이름 국어영어수학만들고 
	sb.setKor(kor);
	sb.setEng(eng);
	sb.setMath(math);
%>
</head>
<body>
이름: <%=sb.getName() %><br><!-- get으로 뿌려줌 -->
국어: <%=sb.getKor() %><br>
영어: <%=sb.getEng() %><br>
수학: <%=sb.getMath() %><br>
총점: <%=sb.getTot()%><br>
평균: <%=sb.getAvg()%><br>
학점: <%=sb.getGrade()%><br>



</body>
</html>