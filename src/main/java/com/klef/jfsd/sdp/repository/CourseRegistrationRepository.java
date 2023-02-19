package com.klef.jfsd.sdp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.CourseRegistration;

@Repository
public interface CourseRegistrationRepository extends CrudRepository<CourseRegistration, Integer>
{
	@Query("select r from CourseRegistration r where r.facultyid=?1")
	public List<CourseRegistration> viewregstudents(int fid);
}
