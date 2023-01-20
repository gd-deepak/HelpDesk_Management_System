package com.armeka.model;

public class User {
	
	Integer id;
	String uempid;
	String uname;
	String uemail;
	String upassword;
	String uphone;
	String uextno;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUempid() {
		return uempid;
	}
	public void setUempid(String uempid) {
		this.uempid = uempid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String toString() {
		return "User [id=" + id + ", uempid=" + uempid + ", uname=" + uname+ ", uemail="
				+ uemail+ ", upwd=" + upassword+ ", uphone=" + uphone+ ",uextno=" + uextno + "]";
	}
	public String getUextno() {
		return uextno;
	}
	public void setUextno(String uextno) {
		this.uextno = uextno;
	}
	
	

}
