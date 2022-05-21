package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
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


public class imgupCon1 extends HttpServlet {
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
		 
		 diaryImg uploadimg = (diaryImg)session.getAttribute("pagenum");
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 
		 try{
		  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		 } catch(Exception e) {
		  e.printStackTrace();
		 }
		 
		 String fullpath = "./img/" + filename1;
		 String oname="첫번째";
		 String date="2017-05-17";
		 date=date+" "+"00:00:00.0";
		 Timestamp timestamp = Timestamp.valueOf(date);
		 diaryImg dimg= new diaryImg(uploadimg.getD_num(),timestamp,oname,fullpath,loginMember.getId());
		 diaryDAO dao=new diaryDAO();
		 int cnt = dao.insertImg(dimg);
		 if(cnt>0) {	
				System.out.println("사진업로드 성공");
				diaryImg k= new diaryImg(uploadimg.getD_num(),uploadimg.getD_num(),uploadimg.getD_tripday(),loginMember.getId());
				List<diaryImg> dimgList =dao.selectDimgf(loginMember.getId());
				
				if(dimgList != null) {
					System.out.println("사진출력 성공");
					
					response.sendRedirect("diaryHome.jsp");
				}
				else {
					System.out.println("사진출력 실패");
					response.sendRedirect("diaryHome.jsp");
				}
						
				
		}else {  	
				System.out.println("사진업로드 실패");
				
		}
	}

}
