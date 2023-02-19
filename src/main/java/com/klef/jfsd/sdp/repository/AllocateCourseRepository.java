package com.klef.jfsd.sdp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.AllocateCourse;

@Repository
public interface AllocateCourseRepository extends CrudRepository<AllocateCourse, Integer>
{
	@Query("select c from AllocateCourse c where c.facultyid=?1")
	public List<AllocateCourse> viewallocatedcourses(int fid);
	
}


