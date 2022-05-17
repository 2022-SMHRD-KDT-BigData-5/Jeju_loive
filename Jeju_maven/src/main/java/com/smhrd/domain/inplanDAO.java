package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class inplanDAO {	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public inplan selectOnePlan(inplan inplan) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		inplan onePlan = null;

		try {
			onePlan = sqlSession.selectOne("com.smhrd.domain.MemberDAO.selectMember", inplan);
		
	     if (onePlan != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return onePlan;
	   }
	
}
	
	


