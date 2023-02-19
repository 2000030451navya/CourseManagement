package com.klef.jfsd.sdp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="courseregistration_table")
public class CourseRegistration 
{
	@Id
	@GeneratedValue
	private int courseid;
	@Column(nullable = false,length = 200)
	private String coursecode;
	@Column(nullable = false,length = 200)
	private String coursetitle;
	@Column(nullable = false)
	private long studentid;
	@Column(nullable = false)
	private int facultyid;
	public int getCourseid() {
		return courseid;
	}
	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}
	public String getCoursecode() {
		return coursecode;
	}
	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}
	public String getCoursetitle() {
		return coursetitle;
	}
	public void setCoursetitle(String coursetitle) {
		this.coursetitle = coursetitle;
	}
	public long getStudentid() {
		return studentid;
	}
	public void setStudentid(long studentid) {
		this.studentid = studentid;
	}
	public int getFacultyid() {
		return facultyid;
	}
	public void setFacultyid(int facultyid) {
		this.facultyid = facultyid;
	}
	
	
}
