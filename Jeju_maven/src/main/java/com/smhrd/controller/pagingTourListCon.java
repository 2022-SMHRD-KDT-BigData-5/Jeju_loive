package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Paging;
import com.smhrd.domain.tour;
import com.smhrd.domain.tourtestDAO;

public class pagingTourListCon extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        tourtestDAO dao = tourtestDAO.getInstance();
        
        int page = 1;
        
        if(req.getParameter("page")!=null){
            page = Integer.parseInt(req.getParameter("page"));
        }
        Paging paging = new Paging();
        paging.setPage(page);
        paging.setTotalCount(351);
        
        List<tour> pagingtolist = dao.pagingtour(page);
        req.setAttribute("pagingtolist", pagingtolist);
        req.setAttribute("paging", paging);
        
        RequestDispatcher dispatcher = req.getRequestDispatcher("./tour_att.test.jsp");
        dispatcher.forward(req, res);
        
    	
     

        
        
        
    }


	
}
