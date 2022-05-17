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
	
		

}
