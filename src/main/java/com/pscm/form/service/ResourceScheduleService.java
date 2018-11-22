package com.pscm.form.service;

import java.util.List;

import com.pscm.form.model.ResourceSchedule;

public interface ResourceScheduleService {

	ResourceSchedule findById(Integer id);
	
	List<ResourceSchedule> findAll();

	void saveOrUpdate(ResourceSchedule user);
	
	void delete(int id);
	
}