package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//리뷰쓰기
	public int insertReview(review rv) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int writeReview= 0;
		
		try {
			writeReview = sqlSession.insert("com.smhrd.domain.reviewDAO.insertReview", rv);
			if(writeReview >0) {
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

