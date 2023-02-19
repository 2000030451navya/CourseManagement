package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.CourseRegistration;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.repository.AllocateCourseRepository;
import com.klef.jfsd.sdp.repository.CourseRegistrationRepository;
import com.klef.jfsd.sdp.repository.StudentRepository;

@Service

public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AllocateCourseRepository allocateCourseRepository;
	
	@Autowired
	private CourseRegistrationRepository  courseRegistrationRepository;
	
	@Override
	public Student checkstudentlogin(String uname, String pwd) {
		
		return studentRepository.checkstudentlogin(uname, pwd);
	}

	@Override
	public Student viewstudent(String uname) {
		
		return studentRepository.viewstudent(uname);
	}

	@Override
	public int changestudentpwd(String studentnewpwd, String studentoldpwd, String studentuname) {
		
		return studentRepository.updatestudentpwd(studentnewpwd, studentoldpwd, studentuname);
	}

	@Override
	public List<AllocateCourse> viewallcourses() {
		
		return (List<AllocateCourse>) allocateCourseRepository.findAll();
	}

	@Override
	public CourseRegistration registerstudent(CourseRegistration courseregistration) {
		
		return courseRegistrationRepository.save(courseregistration);
	}
	

}
