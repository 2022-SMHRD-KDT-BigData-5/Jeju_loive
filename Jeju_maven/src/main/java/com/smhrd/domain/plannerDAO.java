package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class plannerDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public List<planner> selectPlanner(String mem_id){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<planner> plannerList = null;
		
		try {
			plannerList = sqlSession.selectList("com.smhrd.domain.plannerDAO.selectPlanner",mem_id);
		
	     if (plannerList != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return plannerList;
	   }
	
}
