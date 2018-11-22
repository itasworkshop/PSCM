package com.pscm.form.model;

import java.util.List;
/*
create table resource_schedule(
shid number(5) primary key not null,
resource_type varchar2(20),
resource_name varchar2(20),
activity varchar2(20),
start_time date,
end_time date
);

 */
public class ResourceSchedule {
	// form:hidden - hidden value
	Integer shid;

	// form:input - textbox
	String resource_type;

	// form:input - textbox
	String resource_name;

	// form:select - form:option - dropdown - single select
	String activity;

	// form:input - start_time
	String start_time;

	// form:input - end_time
	String end_time;

	
	public boolean isNew() {
		return (this.shid == null);
	}


	public Integer getShid() {
		return shid;
	}


	public void setShid(Integer shid) {
		this.shid = shid;
	}


	public String getResource_type() {
		return resource_type;
	}


	public void setResource_type(String resource_type) {
		this.resource_type = resource_type;
	}


	public String getResource_name() {
		return resource_name;
	}


	public void setResource_name(String resource_name) {
		this.resource_name = resource_name;
	}


	public String getActivity() {
		return activity;
	}


	public void setActivity(String activity) {
		this.activity = activity;
	}


	public String getStart_time() {
		return start_time;
	}


	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}


	public String getEnd_time() {
		return end_time;
	}


	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

}