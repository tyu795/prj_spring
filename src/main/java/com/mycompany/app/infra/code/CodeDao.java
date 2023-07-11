package com.mycompany.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.code.CodeMapper";
	
	
	public List<Code> selectList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}


	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne",vo);
	}


	public int insert(Code dto) {
		
		return sqlSession.insert(namespace + ".insert",dto);
	}

	// 삭제
	public int delete(Code dto) {
		
		return sqlSession.delete(namespace + ".delete",dto);
	}

	// 수정
	public int uelete(Code dto) {
		
		return sqlSession.update(namespace + ".uelete",dto);
	}


	public int update(Code dto) {
		
		return sqlSession.update(namespace + ".update",dto);
	}
	
	
		
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}

}