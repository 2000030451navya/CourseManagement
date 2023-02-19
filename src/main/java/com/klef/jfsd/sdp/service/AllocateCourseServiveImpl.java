package com.klef.jfsd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.repository.AllocateCourseRepository;

@Service
public class AllocateCourseServiveImpl implements AllocateCourseService
{
	@Autowired
	private AllocateCourseRepository allocateCourseRepository;
}
