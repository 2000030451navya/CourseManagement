package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.AllocateCourseRepository;
import com.klef.jfsd.sdp.repository.FacultyRepository;
import com.klef.jfsd.sdp.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AllocateCourseRepository allocateCourseRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public Faculty addfaculty(Faculty faculty) {
		return facultyRepository.save(faculty);
		
	}

	@Override
	public Student addstudent(Student student) {
		
		return studentRepository.save(student);
	}

	@Override
	public List<Faculty> viewallfaculty() {
		
		return (List<Faculty>) facultyRepository.findAll();
	}

	@Override
	public List<Student> viewallstudents() {
		
		return (List<Student>) studentRepository.findAll();
	}

	@Override
	public void deletefaculty(int facultyid) {
		facultyRepository.deleteById(facultyid);
		
	}

	@Override
	public AllocateCourse allocatecourse(AllocateCourse allocateCourse) 
	{
		return allocateCourseRepository.save(allocateCourse);
	}


	

}