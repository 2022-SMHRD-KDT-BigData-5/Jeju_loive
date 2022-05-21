package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.diary;
import com.smhrd.domain.diaryDAO;


public class diaryUpdateCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		diaryDAO dao=new diaryDAO();
		int num=Integer.parseInt(request.getParameter("num"));
		num=num+1;
		BigDecimal pagenum = new BigDecimal(num);
		HttpSession session= request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String id= loginMember.getId();
		diary diary =new diary(pagenum,id);
		int cnt = dao.insertDiary2(diary);
		
		 if(cnt>0) {
			 System.out.println("추가 성공");
	     }else {
	    	 System.out.println("추가 실패");
	     }
		 response.sendRedirect("diaryHome.jsp");
	}

}
