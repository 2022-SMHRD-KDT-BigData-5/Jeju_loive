package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.inplan;
import com.smhrd.domain.inplanDAO;
import com.smhrd.domain.tour;


public class PlanInsertCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//post인코딩
		request.setCharacterEncoding("UTF-8");
//		//값 받아오기
//		HttpSession session = request.getSession();
//		int tourNum = Integer.parseInt(request.getParameter("tourNum"));
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		//tourNum에 맞는 tour_name 가져오기
//		tour tourInfo = (tour)session.getAttribute("tourInfo");
//		String inplan_name = tourInfo.getAddress();
//		BigDecimal tour_num = tourInfo.getNum();
//		BigDecimal plan_num = new BigDecimal(1);
		
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		inplanDAO dao = new inplanDAO();
		List<Integer> tourNumInt=new ArrayList<Integer>();
		List<BigDecimal> tourNum = new ArrayList<BigDecimal>();
		if(loginMember==null) {
			//로그인 하지 않은 경우
			System.out.println("로그인이 필요한 작업입니다.");
			response.sendRedirect("jointest.jsp");
		}else {
			//로그인 한 경우
			//로그인 한 사용자의 id
			String mem_id = loginMember.getId();
			//사용자가 설정한 tour_name
			String[] items = request.getParameterValues("item");
			//plan_num에 저장할 plan_date
			String planDateStr = request.getParameter("plan_date");
			System.out.println(planDateStr);
			Date planDate = Date.valueOf(planDateStr);
			Timestamp timestamp = Timestamp.valueOf(planDateStr+" "+"00:00:00");
			//사용자가 저장한 tour_num목록들
			String[] tourNumStr = request.getParameterValues("tourNum");
			String[] tourAdd = request.getParameterValues("tourAdd");

			//잘 담겼나 테스트해보기><
			for(int i=0; i<tourNumStr.length; i++) {System.out.print(tourNumStr[i]);}
			
			//tourNum을 BigDecimal로 바꾸기
			
			for(int i=0; i<tourNumStr.length; i++) {
				tourNumInt.add(Integer.parseInt(tourNumStr[i]));
			}
			
			for(int i=0; i<tourNumInt.size(); i++) {
				tourNum.add(new BigDecimal(tourNumInt.get(i)));
				System.out.println(tourNum.get(i));
			}
			
			
			for(int i=0; i<tourNum.size(); i++) {
				inplan inplan = new inplan(items[i], tourNum.get(i), mem_id, timestamp);
				int cnt = dao.insertInplan(inplan);
					if(cnt>0) {
						System.out.println(i+"번째 inplan 입력 성공");
					}else {
						System.out.println(i+"번째 inplan 입력 실패");
					}
			}
			
			
			
			response.sendRedirect("planner.jsp");
			
			
			
		}
		
		
		
		
	
	}

}
