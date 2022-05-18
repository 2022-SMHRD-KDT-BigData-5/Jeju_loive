package com.smhrd.domain;

import java.math.BigDecimal;
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
	

	//사용자의 하루 여행목록 전체주소를 받아오는 메서드
	public List<String> selectTour(BigDecimal planNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<String> tourList = null;

		try {
			tourList = sqlSession.selectList("com.smhrd.domain.inplanDAO.selectTour",planNum);
		
	     if (tourList != null) {
	            sqlSession.commit();
	            System.out.println("입력 성공");
	         } else {
	            sqlSession.rollback();
	            System.out.println("입력 실패");
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return tourList;
	   }

}
	
	


