package com.smhrd.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.Member;
import com.smhrd.domain.diaryAlbum;
import com.smhrd.domain.diaryDAO;


public class imgupCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String id= loginMember.getId();
		
		
		 String date="";
		 String realFolder = "";
		 String filename1 = "";
		 int maxSize = 1024*1024*5;
		 String encType = "UTF-8";
		 String savefile = "img";
		 ServletContext scontext = getServletContext();
		 realFolder = scontext.getRealPath(savefile);
		 
		 try{
			  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

			  Enumeration<?> files = multi.getFileNames();
			     String file1 = (String)files.nextElement();
			     filename1 = multi.getFilesystemName(file1);
			     date=multi.getParameter("date");
			 } catch(Exception e) {
			  e.printStackTrace();
			 }
		 String fullpath = "./img/" + filename1;
		 date=date+" "+"00:00:00";
		 Timestamp timestamp = Timestamp.valueOf(date);
		 diaryAlbum album=new diaryAlbum(timestamp, fullpath, id);
		 diaryDAO dao = new diaryDAO();
		 
		 int cnt = dao.insertAlbum(album);
		 if(cnt>0) {
			 System.out.println("이미지 저장 성공");
		 }
		 else {
			 System.out.println("이미지 저장 실패!");
		 }
		 response.sendRedirect("diaryMain.jsp");
	}	
	

}
