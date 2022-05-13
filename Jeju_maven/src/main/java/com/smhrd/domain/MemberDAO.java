package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
   // SqlSessionFactiory 생성 (연결해야하는 DB 설정 정보 가지고 있음)
   // -> Session 생성 (DB 연결, 작업수행, 종료 작업)
   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   

   // 회원가입 기능
   public int insertMember(Member member) {
	   SqlSession sqlSession = sqlSessionFactory.openSession();
      int cnt = 0;
      try {
         cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.insertMember", member);
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
   public Member selectMember(Member member) {
	   SqlSession sqlSession = sqlSessionFactory.openSession();
	   Member loginMember = null;
	   try {
		   //selectOne() -> 결과값(Object)
		   // -> 결과값이 항상 1개 아니면 null
		   //같은 아이디/패스워드가 테이블에 여러개 들어가 있을 경우에는 오류!
		   	 loginMember = sqlSession.selectOne("com.smhrd.domain.MemberDAO.selectMember", member);
	         //cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.insertMember", member);
	         if (loginMember != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return loginMember;
	   }
   		
   	
   		
}

























