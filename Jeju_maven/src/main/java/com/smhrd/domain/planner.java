package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class planner {
	private BigDecimal plan_num;
	private String plan_name;
	private Timestamp plan_date;
	private String mem_id;
	
	public planner(BigDecimal plan_num, String plan_name, Timestamp plan_date, String mem_id) {
		super();
		this.plan_num = plan_num;
		this.plan_name = plan_name;
		this.plan_date = plan_date;
		this.mem_id = mem_id;
	}

	public BigDecimal getPlan_num() {
		return plan_num;
	}

	public String getPlan_name() {
		return plan_name;
	}

	public Timestamp getPlan_date() {
		return plan_date;
	}

	public String getMem_id() {
		return mem_id;
	}
	
	
	
	
}
