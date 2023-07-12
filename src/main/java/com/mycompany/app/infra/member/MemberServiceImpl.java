package com.mycompany.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList() {
		
		return dao.selectList();
	}

	@Override
	public Member selectOne(MemberVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int insert(Member dto) {
		return dao.insert(dto);
	}

	@Override
	public Member selectOneAjax(MemberVo vo) {
		return dao.selectOneAjax(vo);
	}


	
	
	

}
