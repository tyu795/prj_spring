//
//  package com.mycompany.app.infra.rooms;
// 
//  import java.util.List;
//
//import javax.annotation.Resource;
//import javax.inject.Inject;
//
//import org.apache.ibatis.session.SqlSession;
//
//import com.mycompany.app.infra.member.Member;
//import com.mycompany.app.infra.member.MemberVo;
//  
//  public class RoomsDao {
//  
//	  @Inject
//		@Resource(name = "sqlSession")
//		private SqlSession sqlSession;
//
//		private static String namespace = "com.mycompany.app.infra.rooms.RoomsMapper";
//	  
//	  
//		public List<Rooms> selectList() { return sqlSession.selectList(namespace + ".selectList"); }
//
//  
//		public Rooms selectOne(RoomsVo vo) {
//			return sqlSession.selectOne(namespace + ".selectOne", vo);
//		}
//		
//		public int insert(Rooms dto) {
//			
//			return sqlSession.insert(namespace + ".insert",dto);
//		}
//		
//		
//		// 삭제
//		public int delete(Rooms dto) {
//			return sqlSession.delete(namespace + ".delete",dto);
//		}
//		
//		
//  }		
//		
