package com.mycompany.app.infra.rooms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomsServiceImpl implements RoomsService{
	
	
	@Autowired
	RoomsDao dao;

	@Override
	public List<Rooms> selectList(RoomsVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Rooms selectOne(RoomsVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int insert(Rooms dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(Rooms dto) {
		return dao.delete(dto);
	}

	@Override
	public int uelete(Rooms dto) {
		return dao.uelete(dto);
	}

	@Override
	public int update(Rooms dto) {
		return dao.update(dto);
	}

	

	


	
	

}
