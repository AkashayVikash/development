package com.gts.web.model;

import javax.persistence.Column;
import javax.persistence.Id;

public class Student {
	
	@Id
	@Column(name = "STUDENT_ID")
	int studentId;
	
	@Column(name = "FIRST_NAME")
	String firstname;
	
	@Column(name = "LAST_NAME")
	String lastname;
	
	@Column(name ="EMAIL")
	String email;
	
	@Column(name ="PASSWORD")
	String password;
	
	@Column(name ="AGE")
	int age;
	
	@Column(name ="STANDARD")
	String standard;
	
	@Column(name ="GENDER")
	String gender;
	
	@Column(name ="ADDRESS")
	String address;
	
	@Column(name ="PHONE")
	String phone;

	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
}
