package com.smhrd.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.diaryAlbum;
import com.smhrd.domain.diaryDAO;


public class deleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String date = request.getParameter("date");
		String loc=request.getParameter("loc");
		HttpSession session =request.getSession();
		Member loginMember=(Member)session.getAttribute("loginMember");
		String id=loginMember.getId();
		String date2=date+" "+"00:00:00";
		Timestamp timestamp = Timestamp.valueOf(date2);
		
		diaryAlbum album=new diaryAlbum(timestamp,loc,id);
		
		diaryDAO dao= new diaryDAO();
		int cnt = dao.deleteAlbum(album);
		if(cnt>0) {
			System.out.println("삭제성공");
		}
		else {
			System.out.println("삭제실패");
		}
		response.sendRedirect("diaryMain.jsp?dia_tripday="+date);
	}

}
