package com.pscm.form.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pscm.form.dao.ResourceScheduleDao;
import com.pscm.form.model.ResourceSchedule;

@Service("resourceScheduleService")
public class ResourceScheduleServiceImpl implements ResourceScheduleService {

	ResourceScheduleDao resourceScheduleDao;
	
	@Autowired
	public void setUserDao(ResourceScheduleDao resourceScheduleDao) {
		this.resourceScheduleDao = resourceScheduleDao;
	}

	@Override
	public List<ResourceSchedule> findAll() {
		return resourceScheduleDao.findAll();
	}
	

	@Override
	public ResourceSchedule findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveOrUpdate(ResourceSchedule user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

}