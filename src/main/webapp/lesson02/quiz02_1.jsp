<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		

	String type = request.getParameter("type");
	Date now = new Date();
	SimpleDateFormat sdf = null;
	

	if(type.equals("time")) {
		sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초입니다.");
	}else {
		 sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일");
	}
	
		String result = sdf.format(now);
	
	
	%>
	
	<div class="display-4">
	<%= result %>
	</div>
	
	
	
	



</body>
</html>