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
import com.smhrd.domain.tourDAO;


public class reviewCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post인코딩
		request.setCharacterEncoding("UTF-8");
		
		//값 받아오기
		String mem_id = request.getParameter("mem_id");
		String rev_content = request.getParameter("content");
		BigDecimal tour_num = new BigDecimal(request.getParameter("tour_num"));
		BigDecimal rev_star = new BigDecimal(request.getParameter("rating"));
		
		//값 변환
		
		
		//값 담기
		review review = new review(tour_num, mem_id, rev_star, rev_content);
		
		reviewDAO r_dao = new reviewDAO();

		int cnt = 0;
		cnt = r_dao.insertReview(review);
		if(cnt>0) {
			System.out.println("리뷰 저장 성공");
		}else {
			System.out.println("리뷰 저장 실패");
		}
		
		//리뷰저장후 다시 다이어리 상세로 보내기
		response.sendRedirect("diaryMain.jsp");
		
		
		
		
	}

}