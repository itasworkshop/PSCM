package com.pscm.form.dao;

import java.util.List;

import com.pscm.form.model.ResourceSchedule;

public interface ResourceScheduleDao {

	ResourceSchedule findById(Integer id);

	List<ResourceSchedule> findAll();

	void save(ResourceSchedule user);

	void update(ResourceSchedule user);

	void delete(ResourceSchedule id);

}