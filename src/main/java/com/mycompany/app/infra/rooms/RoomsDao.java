package com.mycompany.app.infra.rooms;
 
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

 @Repository
 public class RoomsDao {
  
	  @Inject
		@Resource(name = "sqlSession")
		private SqlSession sqlSession;

		private static String namespace = "com.mycompany.app.infra.rooms.RoomsMapper";
	  
		
		public List<Rooms> selectList(RoomsVo vo) {
			return sqlSession.selectList(namespace + ".selectList", vo);
		}
		
  
		public Rooms selectOne(RoomsVo vo) {
			return sqlSession.selectOne(namespace + ".selectOne", vo);
		}
		
		public int insert(Rooms dto) {
			
			return sqlSession.insert(namespace + ".insert",dto);
		}
		
		
		// 삭제
		public int delete(Rooms dto) {
			return sqlSession.delete(namespace + ".delete",dto);
		}


		public int uelete(Rooms dto) {
			return sqlSession.update(namespace + ".uelete",dto);
		}


		public int update(Rooms dto) {
			return sqlSession.update(namespace + ".update",dto);
		}


		
		
  }		
		
