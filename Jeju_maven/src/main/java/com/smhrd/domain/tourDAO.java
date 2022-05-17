package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class tourDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	
		public List<tour> selectTourList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> tourList = null;
			
			try {
				tourList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectTourList");
			
				if(tourList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return tourList;
		}
	
		public List<tour> selectFoodList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> foodList = null;
			
			try {
				foodList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectFoodList");
			
				if(foodList!=null) {
					sqlSession.commit();
					System.out.print("리스트 저장 성공");
				}else {
					sqlSession.rollback();
					System.out.print("리스트 저장 실패");
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return foodList;
		}
		
		public List<tour> selectCafeList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> cafeList = null;
			
			try {
				cafeList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectCafeList");
			
				if(cafeList!=null) {
					sqlSession.commit();
					System.out.print("리스트 저장 성공");
				}else {
					sqlSession.rollback();
					System.out.print("리스트 저장 실패");
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return cafeList;
		}
		

}
