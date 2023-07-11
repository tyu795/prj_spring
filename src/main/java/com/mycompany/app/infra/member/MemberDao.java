package com.mycompany.app.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";

	public List<Member> selectList() { return sqlSession.selectList(namespace + ".selectList"); }

	public Member selectOne(MemberVo vo) {
//		Member member = sqlSession.selectOne(namespace + ".selectOne", vo);
//		return member;
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public int insert(Member dto) {
		
		return sqlSession.insert(namespace + ".insert",dto);
	}
 
//	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
}
