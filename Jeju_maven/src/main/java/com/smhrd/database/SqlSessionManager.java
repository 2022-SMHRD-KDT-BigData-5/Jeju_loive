package com.smhrd.database;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	public static SqlSessionFactory sqlSession;

	   static {
	      String resource = "com/smhrd/database/mybatis-config.xml";
	      Reader reader;
	      try {
	         reader = Resources.getResourceAsReader(resource);
	         sqlSession = new SqlSessionFactoryBuilder().build(reader);
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }
	   
	   //db연결, 종료, 실행 세션 관리
	   //static 키워드 사용시 -> 어디에서든 호출 가능
	   public static SqlSessionFactory getSqlSession() {
	      return sqlSession;
	   }
}
