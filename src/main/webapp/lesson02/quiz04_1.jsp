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
		int cm = Integer.parseInt(request.getParameter("length"));
		String[] types = request.getParameterValues("type");
	
		
		
		
		
		
		
	%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=cm %>cm
		</h3>
		<hr>
	</div>

	<h2>
		<%
			if(types != null) {
			for(String type : types) {
			 if(type.equals("inch")) {
				  double inch = cm * 0.393701;
				  out.print(inch + "inch<br>");
			  }else if(type.equals("yard")) {
				  
				  double yard= cm * 0.0109361;
				  out.print(yard + "yard<br>");
			  }else if(type.equals("ft")) {
				  
				  double feet = cm * 0.0328084;
				  out.print(feet + "feet<br>");
			  }else if(type.equals("meter")) {
				  double meter = cm / 100.0;
				  out.print(meter + "meter<br>");
			  }
			}
			}
	 	%>

	</h2>
</body>
</html>