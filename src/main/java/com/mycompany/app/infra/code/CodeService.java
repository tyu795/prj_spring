package com.mycompany.app.infra.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList(CodeVo vo);

	public int insert(Code vo);
	public int delete(Code dto);
	public int uelete(Code dto);
	public int update(Code dto);
		
	

}
