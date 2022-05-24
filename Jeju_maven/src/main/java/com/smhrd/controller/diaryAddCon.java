package com.smhrd.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.diary;
import com.smhrd.domain.diaryDAO;


public class diaryAddCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date = request.getParameter("date");
		date=date+" "+"00:00:00.0";
		System.out.print(date);
		Timestamp timestamp = Timestamp.valueOf(date);
		
		HttpSession session = request.getSession();
		Member loginMember=(Member)session.getAttribute("loginMember");
		String id=loginMember.getId();
		
		diary diary=new diary(id,timestamp);
		diaryDAO dao= new diaryDAO();
		int cnt=dao.insertDiaryAdd(diary);
		if (cnt > 0) {
            System.out.print("다이어리 성공");
            
         } else {
        	 System.out.print("다이어리 실패");
         }
		response.sendRedirect("diarytest.jsp");
	}

}
