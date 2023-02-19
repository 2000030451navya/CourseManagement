package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.CourseRegistration;
import com.klef.jfsd.sdp.model.Student;

public interface StudentService 
{
	public Student checkstudentlogin(String uname, String pwd);
	
	public Student viewstudent(String uname);
	
	public int changestudentpwd(String studentnewpwd,String studentoldpwd,String studentuname);
	
	public List<AllocateCourse> viewallcourses();
	
	public CourseRegistration registerstudent(CourseRegistration courseregistration);
}
