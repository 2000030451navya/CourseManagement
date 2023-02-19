package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.CourseRegistration;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.repository.AllocateCourseRepository;
import com.klef.jfsd.sdp.repository.CourseRegistrationRepository;
import com.klef.jfsd.sdp.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService
{

	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private AllocateCourseRepository allocateCourseRepository;
	
	@Autowired
	private CourseRegistrationRepository courseRegistrationRepository;

	@Override
	public Faculty checkfacultylogin(String uname, String pwd) {
		
		return facultyRepository.checkfacultylogin(uname,pwd);
	}

	@Override
	public Faculty viewfaculty(String funame) {
		
		return facultyRepository.viewfaculty(funame);
	}

	@Override
	public int changefacultypwd(String facultynewpwd, String facultyoldpwd, String facultyuname) {
		
		return facultyRepository.updatefacultypwd(facultynewpwd,facultyoldpwd,facultyuname);
	}

	@Override
	public List<AllocateCourse> viewallocatedcourses(int fid) {
		
		return (List<AllocateCourse>) allocateCourseRepository.viewallocatedcourses(fid);
	}

	@Override
	public List<CourseRegistration> viewregisteredstudents(int fid) {
		
		return (List<CourseRegistration>) courseRegistrationRepository.viewregstudents(fid);
	}
	
	
}
