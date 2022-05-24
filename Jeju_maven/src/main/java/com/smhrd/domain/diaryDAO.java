package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class diaryDAO {
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		//다이어리 데이터 추가하기	
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
		
		public int insertDiaryAdd(diary diary) {
			  SqlSession sqlSession = sqlSessionFactory.openSession();
		      int cnt = 0;
		      try {
		         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertDiaryAdd", diary);
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
			public diary selectDiary(diary d) {
				SqlSession sqlSession = sqlSessionFactory.openSession();
				diary diary = null;
				
				try {
					diary = sqlSession.selectOne("com.smhrd.domain.diaryDAO.selectDiary",d);
			     if (diary != null) {
			            sqlSession.commit();
			            
			         } else {
			            sqlSession.rollback();
			            
			         }
			      } catch (Exception e) {
			         e.printStackTrace();
			      } finally {
			         sqlSession.close();
			      }
			      return diary;
			   }
			public List<String> selectDiaryDay(String id) {
				SqlSession sqlSession = sqlSessionFactory.openSession();
				List<String> tripday=null;
				
				try {
					tripday = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDiaryDay",id);
			     if (tripday != null) {
			            sqlSession.commit();
			            
			         } else {
			            sqlSession.rollback();
			            
			         }
			      } catch (Exception e) {
			         e.printStackTrace();
			      } finally {
			         sqlSession.close();
			      }
			      return tripday;
			   }
			
			public List<String> selectAlbum(diaryAlbum album) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   List<String> albumlist = null;
				   try {
					   
					   	 albumlist = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectAlbum", album);
				         
				         if (albumlist != null) {
				            sqlSession.commit();
				         } else {
				            sqlSession.rollback();
				         }
				      } catch (Exception e) {
				         e.printStackTrace();
				      } finally {
				         sqlSession.close();
				      }
				      return albumlist;
				   }
			
			
			
			
			
			
			//다이어리 내용 업데이트
			public int updateDiary(diary diary) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.updateDiary", diary);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			public int insertDiary2(diary diary) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertDiary2",diary);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			//다이어리 이미지 저장하기
			public int insertImg2(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertImg2", dimg);
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
			//저장한 이미지 가져오기
			public List<diaryImg> selectDimg2(String id) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   List<diaryImg> dimg = null;
				   try {
					   
					   	 dimg = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDimg2", id);
				         
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
			//이미지 수정
			public int updateDimg2(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.updateDimg2", dimg);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			
			
			//다이어리 이미지 저장하기
			public int insertImg3(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertImg3", dimg);
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
			//저장한 이미지 가져오기
			public List<diaryImg> selectDimg3(String id) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   List<diaryImg> dimg = null;
				   try {
					   
					   	 dimg = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDimg3", id);
				         
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
			//이미지 수정
			public int updateDimg3(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.updateDimg3", dimg);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			
			
			//다이어리 이미지 저장하기
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
			//저장한 이미지 가져오기
			public List<diaryImg> selectDimgf(String id) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   List<diaryImg> dimg = null;
				   try {
					   
					   	 dimg = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDimgf", id);
				         
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
			
			//저장한 이미지 가져오기
			public List<diaryAlbum> selectDimgAll(String id) {
				   SqlSession sqlSession = sqlSessionFactory.openSession();
				   List<diaryAlbum> dimg = null;
				   try {
					   
					   	 dimg = sqlSession.selectList("com.smhrd.domain.diaryDAO.selectDimgAll", id);
				         
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
			//이미지 수정
			public int updateDimg(diaryImg dimg) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.updateDimg", dimg);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
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
			
			//여기서부터
			//이미지 저장
			public int insertAlbum(diaryAlbum album) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         cnt = sqlSession.insert("com.smhrd.domain.diaryDAO.insertAlbum", album);
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
			
			public int updateAlbum(diaryAlbum album) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.updateAlbum", album);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			
			public int deleteAlbum(diaryAlbum album) {
				  SqlSession sqlSession = sqlSessionFactory.openSession();
			      int cnt = 0;
			      try {
			         
			         cnt = sqlSession.update("com.smhrd.domain.diaryDAO.deleteAlbum", album);
			         
			         if(cnt>0) {
			            sqlSession.commit();
			         }else {
			            sqlSession.rollback();
			         }
			      }catch(Exception e) {
			         e.printStackTrace();
			      }finally{
			         sqlSession.close();
			      }
			      return cnt;
			   }
			
			
			
}
