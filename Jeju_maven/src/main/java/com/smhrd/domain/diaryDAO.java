package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class diaryDAO {
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			
		public int insertDiary(diary diary) {
			  SqlSession sqlSession = sqlSessionFactory.openSession();
		      int cnt = 0;
		      try {
		         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertDiary", diary);
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
			         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertImg", dimg);
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
			
			public diaryImg selectDimgf(diaryImg diaryimg) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   diaryImg dimg = null;
				   try {
					   
					   	 dimg = sqlSession.selectOne("com.smhrd.domain.diaryDAO.selectDimgf", diaryimg);
				         
				         if (dimg != null) {
				            sqlSession.commit();
				         } else {
				            sqlSession.rollback();
				         }
				      } catch (Exception e) {
				         e.printStackTrace();
				      } finally {
				         sqlSession.close();
				      }
				      return dimg;
				   }
			
			//다이어리 공유여부체크
			public boolean shareDiary(BigDecimal dia_share) {
				SqlSession sqlSession = sqlSessionFactory.openSession();
				boolean check = false; //사용할 수 있으면(db에 값이 없다) - true
									   //사용할 수 없으면(db에 값이 있다) - false
				
				try {
					BigDecimal diack = sqlSession.selectOne("com.smhrd.domain.diaryDAO.dia_share", dia_share);
					if(diack!=null) {
						check=false;
						sqlSession.commit();
					}else {
						check=true;
						sqlSession.commit();
					}
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
				return check;
			}
}
