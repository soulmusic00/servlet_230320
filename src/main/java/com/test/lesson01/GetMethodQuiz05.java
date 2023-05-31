package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Integer number = Integer.parseInt(request.getParameter("number"));
		
		// 서블릿: 자바 + HTML
		
		out.print("<html><head><title></title></head><body><ul>");
		
		for(int i = 1; i < 10; i++) {
			
			out.print("<li>"  + number +"*" + i+ "</li>");
			
			
			
		}
		
		
		out.print("</ul></body></html>");
		
	
		

		
		
		
		
	}
	
	
	
	
	
}
