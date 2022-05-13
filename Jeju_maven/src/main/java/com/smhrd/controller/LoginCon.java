package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Member;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post방식 요청 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		Member m_vo = new Member(id, pw);
		
		
		
		
	}

}
