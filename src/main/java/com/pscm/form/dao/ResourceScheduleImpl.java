package com.pscm.form.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.pscm.form.model.ResourceSchedule;

@Repository
public class ResourceScheduleImpl implements ResourceScheduleDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	private JdbcTemplate jdbcTemplate;
    // JdbcTemplate setter
	
	@Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
    {
        this.jdbcTemplate = jdbcTemplate;
    }

	@Override
	public ResourceSchedule findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(ResourceSchedule user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ResourceSchedule user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ResourceSchedule id) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<ResourceSchedule> findAll() {
		String sql = "SELECT * FROM resource_schedule";
		List<ResourceSchedule> result = jdbcTemplate.query(sql, new ResourceScheduleMapper());

		return result;

	}
	

	private static final class ResourceScheduleMapper implements RowMapper<ResourceSchedule> {

		public ResourceSchedule mapRow(ResultSet rs, int rowNum) throws SQLException {
			ResourceSchedule resourceSchedule = new ResourceSchedule();
			resourceSchedule.setShid(rs.getInt("shid"));
			resourceSchedule.setResource_type(rs.getString("resource_type"));
			resourceSchedule.setResource_name(rs.getString("resource_name"));			
			resourceSchedule.setActivity(rs.getString("activity"));
			resourceSchedule.setStart_time(rs.getString("start_time"));
			resourceSchedule.setEnd_time(rs.getString("end_time"));
			return resourceSchedule;
		}
	}
	

	private static List<String> convertDelimitedStringToList(String delimitedString) {

		List<String> result = new ArrayList<String>();

		if (!StringUtils.isEmpty(delimitedString)) {
			result = Arrays.asList(StringUtils.delimitedListToStringArray(delimitedString, ","));
		}
		return result;

	}

	private String convertListToDelimitedString(List<String> list) {

		String result = "";
		if (list != null) {
			result = StringUtils.arrayToCommaDelimitedString(list.toArray());
		}
		return result;

	}

}