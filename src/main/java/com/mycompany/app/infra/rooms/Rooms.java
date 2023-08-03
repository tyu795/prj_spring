
package com.mycompany.app.infra.rooms;

import org.springframework.web.multipart.MultipartFile;

public class Rooms {
	
 
	 private String seq; 
	 private String room_name; 
	 private String room_address; 
	 private String room_price; 
	 private String room_description; 
	 private String check_in_time; 
	 private String check_out_time; 
	 private String return_policy;
	 private String delNy;
	 
	 
	 // 업로드용 dto
	 private MultipartFile[] uploadImg;
	 private Integer uploadImgType;	
	 private Integer uploadImgMaxNumber;
	 private String[] uploadImgDeleteSeq;
	 private String[] uploadImgDeletePathFile;	
	 
	 
	 
	 
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_address() {
		return room_address;
	}
	public void setRoom_address(String room_address) {
		this.room_address = room_address;
	}
	public String getRoom_price() {
		return room_price;
	}
	public void setRoom_price(String room_price) {
		this.room_price = room_price;
	}
	public String getRoom_description() {
		return room_description;
	}
	public void setRoom_description(String room_description) {
		this.room_description = room_description;
	}
	public String getCheck_in_time() {
		return check_in_time;
	}
	public void setCheck_in_time(String check_in_time) {
		this.check_in_time = check_in_time;
	}
	public String getCheck_out_time() {
		return check_out_time;
	}
	public void setCheck_out_time(String check_out_time) {
		this.check_out_time = check_out_time;
	}
	public String getReturn_policy() {
		return return_policy;
	}
	public void setReturn_policy(String return_policy) {
		this.return_policy = return_policy;
	}
	 
	 
	 
	 
 }
