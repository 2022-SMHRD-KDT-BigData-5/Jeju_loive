package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.tour;
import com.smhrd.domain.tourDAO;


public class TourInfoCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //get방식(쿼리스트링)
      System.out.println("[TourInfoCon]");
      int tourNum = Integer.parseInt(request.getParameter("tourNum"));
      System.out.println("현재 관광번호는 "+tourNum);
      tourDAO dao = new tourDAO();
      tour tourInfo =null;
      
      tourInfo = dao.getTourInfo(tourNum);
      
      if(tourInfo!=null) {
         //관광정보 가져오기 성공
         System.out.println("관광정보 가져오기 성공");
         HttpSession session = request.getSession();
         session.setAttribute("tourInfo", tourInfo);
         session.setAttribute("tourNum", tourNum);
         response.sendRedirect("tour_detail.jsp?tourNum="+tourNum);
      }else {
         //관광정보 가져오기 실패
         System.out.println("관광정보 가져오기 실패");
         response.sendRedirect("tour_detail.jsp");
      }
      
   }

}