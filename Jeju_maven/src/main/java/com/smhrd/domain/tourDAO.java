package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class tourDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
		//관광지 정보 list 가져오는 메서드
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
		
		
		
		//음식 정보 list 가져오는 메서드
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
		
		
		
		
		//카페 정보 list 가져오는 메서드
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
		
		
		
		// tour에서 관광지 상세정보 가져오는 메서드
		public tour getTourInfo(int tourNum) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			
			tour tourInfo = null;
			try {
				tourInfo = sqlSession.selectOne("com.smhrd.domain.tourDAO.selectTourInfo", tourNum);
				
				if(tourInfo!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return tourInfo;
		}
		public tour selectTourInfo2(BigDecimal tourNum) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			
			tour tourInfo = null;
			try {
				tourInfo = sqlSession.selectOne("com.smhrd.domain.tourDAO.selectTourInfo2", tourNum);
				
				if(tourInfo!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return tourInfo;
		}
		
		//사용자의 하루 여행목록 받아오는 메서드
		public List<tour> selectTour(inplan inplan) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> tourList = null;
			try {
				tourList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectTour",inplan);
			
		     if (tourList != null) {
		            sqlSession.commit();
		            System.out.println("입력 성공");
		         } else {
		            sqlSession.rollback();
		            System.out.println("입력 실패");
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         sqlSession.close();
		      }
		      return tourList;
		   }
		
		
		//tour_img 에서 사진 가져오는 메서드
		
		public List<tour> selectImgList(int tourNum) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> ImgList = null;
			
			try {
				ImgList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectImgList",tourNum);
			
				if(ImgList!=null) {
					sqlSession.commit();
					System.out.println("이미지성공");
				}else {
					sqlSession.rollback();
					System.out.println("이미지실패");
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return ImgList;
		}

		
		// tour_img에서 관광지 사진 가져오는 메서드
		public List<tour> selectTourImgList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> tourImgList = null;
			
			try {
				tourImgList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectTourImgList");
			
				if(tourImgList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return tourImgList;
		}

		// tour_img에서 음식점 사진 가져오는 메서드
		public List<tour> selectFoodImgList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> foodImgList = null;
			
			try {
				foodImgList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectFoodImgList");
			
				if(foodImgList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return foodImgList;
		}

		// tour_img에서 카페 사진 가져오는 메서드
		public List<tour> selectCafeImgList() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<tour> cafeImgList = null;
			
			try {
				cafeImgList = sqlSession.selectList("com.smhrd.domain.tourDAO.selectCafeImgList");
			
				if(cafeImgList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return cafeImgList;
		}
		
		
		}


