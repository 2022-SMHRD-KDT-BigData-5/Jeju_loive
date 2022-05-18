package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//리뷰쓰기
	public review insertReview(review rv) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		review writeReview=null;
		
		try {
			writeReview = sqlSession.insert("com.smhrd.domain.reviewDAO.insertReview", rv);
			if(writeReview != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return writeReview;
	}
}

