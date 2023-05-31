package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat sdf = new SimpleDateFormat("기사 입력 시간: yyyy/dd/mm hh:mm:ss");
		
		Date now = new Date();
		out.print("<html><head><title>뉴스기사</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print("<p>기사 입력 시간:" +sdf.format(now)+ "</p><hr>");
		out.print("끝");
		out.print("<body></html>");
		
		
		
		
		
		
		
	}
	
	
	
	
}
