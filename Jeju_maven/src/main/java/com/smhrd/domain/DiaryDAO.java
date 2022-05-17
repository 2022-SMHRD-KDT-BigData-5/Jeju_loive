package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DiaryDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	

	   // 회원가입 기능
	   public int insertDiary(Diary diary) {
		   SqlSession sqlSession = sqlSessionFactory.openSession();
	      int cnt = 0;
	      try {
	         cnt = sqlSession.insert("com.smhrd.domain.DiaryDAO.insertDiary", diary);
	         if (cnt > 0) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return cnt;
	   }
	   
	   //로그인기능
	   public List<Diary> selectDiary(String mem_id) {
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   List<Diary> diaryList = null;
		   try {
			   
			   	 diaryList = sqlSession.selectList("com.smhrd.domain.DiaryDAO.selectDiary", mem_id);
		         
			   	
			   	 System.out.print(diaryList);
			   	 
		         if (diaryList != null) {
		            sqlSession.commit();
		         } else {
		            sqlSession.rollback();
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         sqlSession.close();
		      }
		      return diaryList;
		   }
	   
	   		
	   	
	   		
	}


