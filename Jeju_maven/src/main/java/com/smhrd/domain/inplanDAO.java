package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class inplanDAO {	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
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
	
	public List<inplan> selectPlanAdd(String mem_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<inplan> addList = null;

		try {
			addList = sqlSession.selectList("com.smhrd.domain.inplanDAO.selectPlanAdd",mem_id);
		
	     if (addList != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return addList;
	   }
	
}
	
	


