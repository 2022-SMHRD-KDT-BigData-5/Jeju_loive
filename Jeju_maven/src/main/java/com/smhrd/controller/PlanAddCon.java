package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.tour;


public class PlanAddCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		int tourNum = Integer.parseInt(request.getParameter("tourNum"));
		
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		PrintWriter out = response.getWriter();
		
		if(loginMember==null) {
			System.out.println("로그인이 필요한 작업입니다.");
			out.print("로그인이 필요합니다.");
		}else {
			//로그인을 한 경우
			//플래너에 일정 추가하기
			
			
			
			
			
		}
		
		
		
		
	}

}
