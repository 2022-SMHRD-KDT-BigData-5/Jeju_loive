package com.smhrd.controller;

import java.io.IOException;
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
import com.smhrd.domain.diaryDAO;
import com.smhrd.domain.diaryImg;


public class imguChangeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		 HttpSession session = request.getSession();
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
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
		
		 
		 String fullpath = "./img/" + filename1;
		 System.out.println(fullpath);
		 diaryImg updateimg = (diaryImg)session.getAttribute("updateimg");
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 System.out.println(updateimg.getP_oname());
		 diaryImg dimg= new diaryImg(updateimg.getD_num(),updateimg.getD_num(),updateimg.getD_tripday(),updateimg.getP_oname(),fullpath,loginMember.getId());
		 System.out.println(dimg.getP_oname());
		 diaryDAO dao =new diaryDAO();
		 int cnt = dao.updateMember(dimg);
		 
		 if(cnt>0) {
			 System.out.print("업데이트 성공");
	     }else {
	    	 System.out.print("업데이트 실패");
	     }
		 response.sendRedirect("diaryHome.jsp");
		 
	}

}
