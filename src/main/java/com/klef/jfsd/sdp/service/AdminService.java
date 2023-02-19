package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;

public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);
	
	public Faculty addfaculty(Faculty faculty);
	
	public Student addstudent(Student student);
	
	public List<Faculty> viewallfaculty();
	
	public List<Student> viewallstudents();
	
	public void deletefaculty(int facultyid);
	
	public AllocateCourse allocatecourse(AllocateCourse allocateCourse);
}

