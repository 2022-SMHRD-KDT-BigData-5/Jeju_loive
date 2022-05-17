package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;


public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String j_id = request.getParameter("j_id");
		MemberDAO dao = new MemberDAO();
		boolean check = dao.idCheck(j_id);
		
		//클라이언트 응답
		PrintWriter out = response.getWriter();
		out.print(check);
	}

}
