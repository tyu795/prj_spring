package com.mycompany.app.infra.member;

import java.util.List;

import com.mycompany.app.infra.codegroup.CodeGroup;

public interface MemberService {

	public List<Member> selectList(); 
	public Member selectOne(MemberVo vo);
	public Member selectOneAjax(MemberVo vo);
	public int selectOneCheckId(MemberVo vo);
	
	public int insert(Member dto);
	public int delete(Member dto);
}
