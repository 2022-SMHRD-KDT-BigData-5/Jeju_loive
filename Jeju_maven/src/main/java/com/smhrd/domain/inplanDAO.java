package com.smhrd.domain;

import java.sql.Timestamp;
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
	
	
		public List<inplan> selectinPlan(inplan inplan) {
						
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<inplan> inplanList = null;

		try {
			inplanList = sqlSession.selectList("com.smhrd.domain.inplanDAO.selectAllPlan",inplan);
		
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
		/*
		 * //사용자의 하루 여행목록 전체주소를 받아오는 메서드 public List<tour> selectTour(inplan inplan) {
		 * SqlSession sqlSession = sqlSessionFactory.openSession(); List<tour> tourList
		 * = null; try { tourList =
		 * sqlSession.selectList("com.smhrd.domain.inplanDAO.selectTour",inplan);
		 * 
		 * if (tourList != null) { sqlSession.commit(); System.out.println("입력 성공"); }
		 * else { sqlSession.rollback(); System.out.println("입력 실패"); } } catch
		 * (Exception e) { e.printStackTrace(); } finally { sqlSession.close(); } return
		 * tourList; }
		 */
	
	
	//플래너에 일정을 추가하는 메서드
		public int insertPlan(inplan inplan) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt=0;
			try {
				cnt = sqlSession.insert("com.smhrd.domain.inplanDAO.insertPlan", inplan);
				
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

	//---------------------------------------여기부터 진짜시작;;ㅎㅎ------------------------------------
		
		public int insertInplan(inplan inplan) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt=0;
			try {
				cnt = sqlSession.insert("com.smhrd.domain.inplanDAO.insertInplan", inplan);
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
		
		public int insertPlanner(plan plan) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt=0;
			try {
				cnt = sqlSession.insert("com.smhrd.domain.inplanDAO.insertPlanner", plan);
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

}
	