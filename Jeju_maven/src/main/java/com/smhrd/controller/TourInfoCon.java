package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.tourDAO;


public class TourInfoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get방식(쿼리스트링)
		int tourNum = Integer.parseInt(request.getParameter("tourNum"));
		
		tourDAO dao = new tourDAO();
		
		
	}

}
