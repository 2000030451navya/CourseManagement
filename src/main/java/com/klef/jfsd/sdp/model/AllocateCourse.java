package com.klef.jfsd.sdp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="courses_table")
public class AllocateCourse 
{
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable=false,unique=true)
	private String coursecode;
	@Column(nullable=false,unique=true,length=100)
	private String coursename;
	@Column(nullable=false)
	private int year;
	@Column(nullable=false)
	private int semester;
	@Column(nullable=false,length=50)
	private String ltps;
	@Column(nullable=false)
	private String Department;
	@Column(nullable=false)
	private int credits;
	@Column(nullable=false)
	private int facultyid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCoursecode() {
		return coursecode;
	}
	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getLtps() {
		return ltps;
	}
	public void setLtps(String ltps) {
		this.ltps = ltps;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}
	public int getFacultyid() {
		return facultyid;
	}
	public void setFacultyid(int facultyid) {
		this.facultyid = facultyid;
	}
	
	
}
