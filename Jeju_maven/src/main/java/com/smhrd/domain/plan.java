package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class plan {
	BigDecimal plan_num;
	String plan_name;
	Timestamp plan_date;
	String mem_id;
	
	
	
	
	//생성자
	public plan(BigDecimal plan_num, String plan_name, Timestamp plan_date, String mem_id) {
		super();
		this.plan_num = plan_num;
		this.plan_name = plan_name;
		this.plan_date = plan_date;
		this.mem_id = mem_id;
	}


	public plan(Timestamp plan_date, String mem_id) {
		super();
		this.plan_date = plan_date;
		this.mem_id = mem_id;
	}
	
	
	
	
	//getter/setter

	public BigDecimal getPlan_num() {
		return plan_num;
	}


	public void setPlan_num(BigDecimal plan_num) {
		this.plan_num = plan_num;
	}


	public String getPlan_name() {
		return plan_name;
	}


	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}


	public Timestamp getPlan_date() {
		return plan_date;
	}


	public void setPlan_date(Timestamp plan_date) {
		this.plan_date = plan_date;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	

}
