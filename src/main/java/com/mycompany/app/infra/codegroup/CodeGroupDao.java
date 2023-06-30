package com.mycompany.app.infra.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo); 
		}
	
		
	public CodeGroup selectOne(CodeGroupVo vo) { 
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne",vo);
		return codeGroup; 
		}
	
	// 업데이트
	public int update(CodeGroup dto) { 
		return sqlSession.update(namespace + ".update",dto);
		}
	
	// 삭제
	public int delete(CodeGroup dto) {
		return sqlSession.delete(namespace + ".delete",dto);
	}
	
	// 등록
	public int insert(CodeGroup dto) {
		return sqlSession.insert(namespace + ".insert",dto);
	}
	
	
	
		
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}

}
