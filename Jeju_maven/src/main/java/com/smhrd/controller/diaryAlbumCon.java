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


public class diaryAlbumCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String change = request.getParameter("change");
		String img = request.getParameter("img");
		
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String id= loginMember.getId();
		Timestamp timestamp = Timestamp.valueOf("2017-05-21 00:00:00");
		diaryAlbum album=new diaryAlbum(timestamp,img,id);
		System.out.println(album.getP_memid());
		
		System.out.println(album.getP_loc());
		System.out.println(album.getD_tripday());
		
		diaryDAO dao= new diaryDAO();
		int cnt = dao.updateAlbum(album);
		if(cnt>0) {
			System.out.println("내용수정 성공");
		}
		else {
			System.out.println("내용수정 실패");
		}
		response.sendRedirect("diaryMain.jsp");
		
	}

}
