package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	@WebServlet("/lesson01/quiz10")
	public class PostMethodQuiz10 extends HttpServlet {
		
		
		// doPost 메소드 바깥쪽에 위치
		private final Map<String, String> userMap =  new HashMap<>() {
		    {
		        put("id", "marobiana");
		        put("password", "qwerty1234");
		        put("name", "신보람");
		    }
		};
		
		
		
		
		

		@Override
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

			response.setContentType("text/html");

		

			String userId = request.getParameter("userId");
			String userPassword = request.getParameter("userPassword");

			PrintWriter out = response.getWriter();

			
			// 테이블로 출력
			out.print("<html><head><title>결과</title></head><body>");
			if(userId.equals(userMap.get("id")) == false) {
					//id 불일치
					out.print("아이디가 일치하지 않습니다");
			}else if(userPassword.equals(userMap.get("password")) == false) {
					out.print("비밀번호가 일치하지 않습니다.");
					
			}else {
					out.print(userMap.get("name") + "님 환영합니다.");
			}
			
			
			out.print("<body></html>");

		}

	

}
