package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.CourseRegistration;
import com.klef.jfsd.sdp.model.Faculty;

public interface FacultyService 
{
	public Faculty checkfacultylogin(String uname,String pwd);
	public Faculty viewfaculty(String funame);
	public int changefacultypwd(String facultynewpwd,String facultyoldpwd,String facultyuname);
	public List<AllocateCourse> viewallocatedcourses(int fid);
	public List<CourseRegistration> viewregisteredstudents(int fid);
}
