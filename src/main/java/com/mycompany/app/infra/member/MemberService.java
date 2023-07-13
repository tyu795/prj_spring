package com.mycompany.app.infra.member;

import java.util.List;

public interface MemberService {

	public List<Member> selectList(); 
	public Member selectOne(MemberVo vo);
	public Member selectOneAjax(MemberVo vo);
	public int insert(Member dto);
	public int selectOneCheckId(MemberVo vo);
}
