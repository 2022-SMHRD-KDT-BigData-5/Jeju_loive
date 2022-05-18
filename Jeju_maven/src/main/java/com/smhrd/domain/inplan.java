package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class inplan {
	private BigDecimal inplan_num;
	private BigDecimal plan_num;
	private String inplan_name;
	private BigDecimal tour_num;
	private String mem_id;
	
	
	public BigDecimal getInplan_num() {
		return inplan_num;
	}
	public BigDecimal getPlan_num() {
		return plan_num;
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
	
	public inplan(BigDecimal inplan_num, BigDecimal plan_num, String inplan_name, BigDecimal tour_num, String mem_id) {
		super();
		this.inplan_num = inplan_num;
		this.plan_num = plan_num;
		this.inplan_name = inplan_name;
		this.tour_num = tour_num;
		this.mem_id = mem_id;
	}
	
	public inplan(BigDecimal plan_num, String inplan_name, BigDecimal tour_num, String mem_id) {
		super();
		this.plan_num = plan_num;
		this.inplan_name = inplan_name;
		this.tour_num = tour_num;
		this.mem_id = mem_id;
	}
	
	
	
	
	
	
	
	
	
}
