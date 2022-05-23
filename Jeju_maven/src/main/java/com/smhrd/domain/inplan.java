package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class inplan {
	
	private BigDecimal inplan_num;
	private String inplan_name;
	private BigDecimal tour_num;
	private String mem_id;
	private Timestamp plan_date;

	
	public inplan(BigDecimal inplan_num, String inplan_name, BigDecimal tour_num, String mem_id, Timestamp plan_date) {
		super();
		this.inplan_num = inplan_num;
		this.inplan_name = inplan_name;
		this.tour_num = tour_num;
		this.mem_id = mem_id;
		this.plan_date = plan_date;
	}
	public inplan(String inplan_name, BigDecimal tour_num, String mem_id, Timestamp planDate) {
		super();
		this.inplan_name = inplan_name;
		this.tour_num = tour_num;
		this.mem_id = mem_id;
		this.plan_date = planDate;
	}
	public BigDecimal getInplan_num() {
		return inplan_num;
	}
	public String getInplan_name() {
		return inplan_name;
	}
	public BigDecimal getTour_num() {
		return tour_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public Timestamp getPlan_date() {
		return plan_date;
	}
<<<<<<< HEAD
	

	
	public inplan(String mem_id, Timestamp plan_date) {
		super();
		this.mem_id = mem_id;
		this.plan_date = plan_date;
	}
	public inplan(String inplan_name, String mem_id) {
=======
	public inplan(String mem_id, Timestamp plan_date) {
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/Jeju_loive.git
		super();
		this.mem_id = mem_id;
		this.plan_date = plan_date;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public void setPlan_date(Timestamp plan_date) {
		this.plan_date = plan_date;
	}
	

	
	
	
}