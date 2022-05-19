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


public class PlanAddCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//인코딩
		request.setCharacterEncoding("UTF-8");
		
		//값 받아오기
		request.getParameter("item");
		
		String[] inPlanList = request.getParameterValues("item");
		inplanDAO dao = new inplanDAO();
		HttpSession session = request.getSession();
		session.setAttribute("inPlan", inPlanList);
		
	
		
		response.sendRedirect("tour_detail.jsp");
		
		
	}
		
}
