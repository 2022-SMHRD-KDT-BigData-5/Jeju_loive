package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class diaryDAO {
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			
		
			//사용자 정보로 다이어리 가져오는 메서드
			public List<diary> selectDiary(String mem_id) {
				SqlSession sqlSession = sqlSessionFactory.openSession();
				List<diary> diaryList = null;
				
				try {
					diaryList = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDiary",mem_id);
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
			
			public int insertImg(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.insertImg", dimg);
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
			   

}
