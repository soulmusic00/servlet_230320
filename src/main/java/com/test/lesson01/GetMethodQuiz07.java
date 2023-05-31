package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();

		String address = request.getParameter("address");
		String paymentCard = request.getParameter("paymentCard");
		int price = Integer.parseInt(request.getParameter("price"));
		
		
		out.print("<html><head><title>주문 결과</title></head><body>");
		out.print("</body></html>");

		if (address.startsWith("서울시") == false) {

			out.print("배달 불가 지역입니다");

		}else if (paymentCard.equals("신한카드")) {

			out.print("결제 불가 카드 입니다.");
		}else {

			out.print(address + "<b>배달 준비중 </b><br>");
			out.print("결제카드" + paymentCard);
			out.print("결제금액:" + price);
			
		}
	
	}

}
