package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.inplan;
import com.smhrd.domain.inplanDAO;
import com.smhrd.domain.tour;


public class PlanInsertCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//post인코딩
		request.setCharacterEncoding("UTF-8");
//		//값 받아오기
//		HttpSession session = request.getSession();
//		int tourNum = Integer.parseInt(request.getParameter("tourNum"));
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		//tourNum에 맞는 tour_name 가져오기
//		tour tourInfo = (tour)session.getAttribute("tourInfo");
//		String inplan_name = tourInfo.getAddress();
//		BigDecimal tour_num = tourInfo.getNum();
//		BigDecimal plan_num = new BigDecimal(1);
		
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		
		if(loginMember==null) {
			//로그인 하지 않은 경우
			System.out.println("로그인이 필요한 작업입니다.");
			response.sendRedirect("Join.jsp");
		}else {
			//로그인 한 경우
			//로그인 한 사용자의 id
			String mem_id = loginMember.getId();
			//plan_num에 저장할 plan_date
			String planDate = request.getParameter("plan_date");
			//사용자가 설정한 tour_name
			String[] items = request.getParameterValues("item");
			
			
			
			
			
		}
		
		
		
		
	
	}

}
