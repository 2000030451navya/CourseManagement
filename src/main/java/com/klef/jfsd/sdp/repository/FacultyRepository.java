package com.klef.jfsd.sdp.repository;

import javax.transaction.Transactional;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Faculty;

@Repository
public interface FacultyRepository extends CrudRepository<Faculty,Integer>
{
	@Query("select f from Faculty f where username=?1 and password=?2")
	public Faculty checkfacultylogin(String uname,String pwd);
	
	@Query("select f from Faculty f where username=?1")
	public Faculty viewfaculty(String funame);
	
	@Transactional
	@Modifying
	@Query("update Faculty f set f.password=?1 where f.password=?2 and f.username=?3")
	public int updatefacultypwd(String facultynewpwd,String facultyoldpwd, String facultyuname);
	
	
	
}
