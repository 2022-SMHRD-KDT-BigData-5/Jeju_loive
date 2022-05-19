package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.review;
import com.smhrd.domain.reviewDAO;


public class reviewCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("[reviewCon]");
		//아이디, 비밀번호를 받아와서
			BigDecimal tourNum = new BigDecimal(request.getParameter("tourNum"));
			String user = request.getParameter("user");
			BigDecimal content = new BigDecimal(request.getParameter("star"));
			String star = request.getParameter("content");
		
			
			review r_vo = new review(tourNum, user, content, star);
			
			reviewDAO dao = new reviewDAO();
			int cnt = dao.insertReview(r_vo);
			
			if(cnt>0) {
				//리뷰쓰기 성공!
				RequestDispatcher rd = request.getRequestDispatcher("jstest.jsp");
				request.setAttribute("user", user);
				request.setAttribute("content", content);
				request.setAttribute("star", star);
				rd.forward(request, response);
				response.sendRedirect("main.jsp");
				
			}else {
				System.out.println("리뷰쓰기 실패");
				response.sendRedirect("tour.jsp");
			}
			
	}

}