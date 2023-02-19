package com.klef.jfsd.sdp.model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student_table")
public class Student 
{
	@Id
	@GeneratedValue
	private int id;
	
	@Column(unique = true,length = 100,nullable = false)
	private long studentid;
	@Column(nullable = false,length = 200)
	private String name;
	@Column(nullable = false,length = 200)
	private String gender;
	@Column(nullable = false,length = 200)
	private String dateofbirth;
	@Column(nullable = false,length = 200)
	private String program;
	@Column(nullable = false,length = 200)
	private String department;
	@Column(nullable = false,length = 200)
	private double cgpa;
	@Column(nullable = false,length = 200)
	private int backlogs;
	@Column(nullable = false,length = 200)
	private String location;
	@Column(nullable = false,unique = true,length = 200)
	private String emailid;
	@Column(nullable = false,unique = true,length = 200)
	private String username;
	@Column(nullable = false,length = 200)
	private String password;
	@Column(nullable = false,unique = true,length = 200)
	private String contactno;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getStudentid() {
		return studentid;
	}
	public void setStudentid(long studentid) {
		this.studentid = studentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public double getCgpa() {
		return cgpa;
	}
	public void setCgpa(double cgpa) {
		this.cgpa = cgpa;
	}
	public int getBacklogs() {
		return backlogs;
	}
	public void setBacklogs(int backlogs) {
		this.backlogs = backlogs;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentid=" + studentid + ", name=" + name + ", gender=" + gender
				+ ", dateofbirth=" + dateofbirth + ", program=" + program + ", department=" + department + ", cgpa="
				+ cgpa + ", backlogs=" + backlogs + ", location=" + location + ", emailid=" + emailid + ", username="
				+ username + ", password=" + password + ", contactno=" + contactno + "]";
	}
	
}
