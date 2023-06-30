package com.mycompany.app.infra.codegroup;
public class CodeGroup {
	//디비칼럼명 첫글자는 소문자
	//seq는 편의상 디비에는 int지만 자바에서는 string으로 사용한다.
	
	private String seq;
	private String name;
	private String delNy;
//	----- 우클릭 source / generate getter, setter
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	
	
}