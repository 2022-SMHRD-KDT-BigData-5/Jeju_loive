package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.inplan;
import com.smhrd.domain.inplanDAO;
import com.smhrd.domain.tour;


public class PlanAddCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//값 받아오기
		HttpSession session = request.getSession();
		int tourNum = Integer.parseInt(request.getParameter("tourNum"));
		Member loginMember = (Member)session.getAttribute("loginMember");
		//tourNum에 맞는 tour_name 가져오기
		tour tourInfo = (tour)session.getAttribute("tourInfo");
		String inplan_name = tourInfo.getAddress();
		BigDecimal tour_num = tourInfo.getNum();
		BigDecimal plan_num = new BigDecimal(1);
		
		
		if(loginMember==null) {
			//로그인 하지 않은 경우
			System.out.println("로그인이 필요한 작업입니다.");
			response.sendRedirect("Join.jsp");
		}else {
			//로그인을 한 경우
			//추가할 값 가져오기
			String mem_id = loginMember.getId();
			PrintWriter out = response.getWriter();
			inplanDAO dao = new inplanDAO();
			
			//생성자에 추가할 값 담아주기
			inplan inplan = new inplan(plan_num, inplan_name, tour_num, mem_id);
			
			//플래너에 일정 추가하기(메서드 사용)
			int cnt = dao.insertPlan(inplan);
			if(cnt>0) {
				System.out.println("inplan저장 성공");
				response.sendRedirect("tour_info.jsp");
			}else {
				System.out.println("inplan저장 실패");
				response.sendRedirect("tour_att.jsp");
			}
			
			
			
		}
		
		
		
		
	}

}
