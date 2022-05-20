package com.smhrd.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class tourtestDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public List<tour> pagingtour(int page){
        //1번 페이지 1~10
        //2번 페이지 11~20        
		/*
		 * int startNum = (page-1)*10+1; int endNum = page*10;
		 */
		SqlSession sqlSession = sqlSessionFactory.openSession();
        List<tour> pagingtolist = null;
        try{
        	pagingtolist = sqlSession.selectList("com.smhrd.domain.tourtestDAO.pagingtour",page);
            
        }catch(Exception e){
            e.printStackTrace();
        }finally{
        	sqlSession.close();
        }
        return pagingtolist;
    }


	public static tourtestDAO getInstance() {
		// TODO Auto-generated method stub
		return null;
	}


	
}

	
