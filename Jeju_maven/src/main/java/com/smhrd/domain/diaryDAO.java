package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class diaryDAO {
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			
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

}
