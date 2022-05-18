package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class inplanDAO {	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	
	//사용자의 플래너를 가져오는 메서드
	public List<inplan> selectAllPlan(String mem_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<inplan> inplanList = null;

		try {
			inplanList = sqlSession.selectList("com.smhrd.domain.inplanDAO.selectAllPlan",mem_id);
		
	     if (inplanList != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return inplanList;
	   }
	
	

}
	
	


