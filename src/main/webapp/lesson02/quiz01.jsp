<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--문제1 --%>
	<%!
		

		private int n;
		private int sum = 0;
		
		public int total(int n) {
			for(int i = 1; i <= n; i++) {
				sum += i;
				
			}
				return sum;
		}
	
	%>
	
	<h2>1부터 50까지의 합은 <%=total(50) %></h2>
	
	
	
	<%--문제2 --%>
	<%
		
	int sum = 0;
	int[] scores = {80, 90, 100, 95, 80};

	for(int i = 0; i < scores.length; i++) {
		sum += scores[i];
		
	}

	
	double avg = sum /= (double)scores.length;
	
	%>
	<h2>평균점수는 <%= avg %></h2>
    
    
    <%
 	int score = 0;
 	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

 	for(int i = 0; i < scoreList.size(); i++) {
 		if(scoreList.get(i).equals("0")) {
 			score+= 10;
 		}
 	}
 	
 /* 	
 	for(String list : scoreList) {
 		if(list == "O") {
 			score+=10;
 		}else {
 			score+=0;
 		}
 	} */
 	
 	
 	
 	%>
	<h2>채점결과는 <%= score %></h2>
	

    
	<%--문제4 --%>
	<%
	
	String birthday="20010820";
	
	String birth = birthday.substring(0,4);
	//out.println(birth);
	
	
	int age = 2023 - Integer.parseInt(birth)+1;
	%>
	
	<h2> <%= birthday %>의 나이는 <%=age %></h2>
	
</body>
</html>