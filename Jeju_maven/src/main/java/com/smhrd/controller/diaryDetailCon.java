package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;

public class diaryDetailCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String dia_tripday=request.getParameter("dia_tripday");
		System.out.println("세션만들기"+dia_tripday);
		session.setAttribute("dia_tripday", dia_tripday);
		response.sendRedirect("diaryMain.jsp");
	}

}
