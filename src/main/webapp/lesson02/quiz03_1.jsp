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
	
		int weight = 0;
		int height = 0;
	
		try {
			weight = Integer.parseInt(request.getParameter("weight"));
		} catch(NumberFormatException e) {
			
		} catch(Exception e) {
			
		}
		try {
			height = Integer.parseInt(request.getParameter("height "));
		} catch(NumberFormatException e) {
			
		} catch(Exception e) {
			
		}
		
		
		double bmi = weight / ((height/ 100.0) * (height/100.0));
		String result = "";
		
		if(bmi <= 20) {
			result = "저체중";
		} else if(bmi >= 21 && bmi <=25) {
			result = "정상";
		} else if(bmi >= 26 && bmi <= 30) {
			result = "과체중";
		} else if(bmi >= 31) {
			result = "비만";
		}
		
		

	%>
	
		<h2>BMI 측정결과<h2><h1>당신은<%=result %>입니다.</h1>

</body>
</html>