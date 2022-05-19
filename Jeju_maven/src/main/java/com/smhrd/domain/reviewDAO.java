package com.smhrd.domain;

import java.math.BigDecimal;
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
	
	//리뷰수정
	public int updateReview(review rv) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int updateReview = 0;
		try {
			updateReview = sqlSession.update("com.smhrd.domain.reviewDAO.updateReview", updateReview);
		
			if(updateReview > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return updateReview;
	}
	
	
	//리뷰삭제
	public int deleteReview(String review) {
		int cnt = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			cnt= sqlSession.delete("com.smhrd.domain.reviewDAO.deleteReview", review);
			
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
		
	}
	//리뷰 리스트 
	public List<review> selectReview(BigDecimal tour_num){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<review> ReviewList = null;
		System.out.println(tour_num);
		try {
			ReviewList = sqlSession.selectList("com.smhrd.domain.reviewDAO.selectReview", tour_num);
		
			if(ReviewList!=null) {
				sqlSession.commit();
				System.out.println("성공");
			}else {
				sqlSession.rollback();
				System.out.println("실패");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return ReviewList;
	
	}
}