package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class inplan {
	private BigDecimal inplan_num;
	private String inplan_name;
	private Timestamp inplan_date;
	private Timestamp inplan_time;
	private String plan_tour;
	private String mem_id;
	
	
	
	
	public inplan(String mem_id) {
		super();
		this.mem_id = mem_id;
	}

	public BigDecimal getInplan_num() {
		return inplan_num;
	}

	public String getInplan_name() {
		return inplan_name;
	}

	public Timestamp getInplan_date() {
		return inplan_date;
	}

	public Timestamp getInplan_time() {
		return inplan_time;
	}

	public String getplan_tour() {
		return plan_tour;
	}


	public String getMem_id() {
		return mem_id;
	}

	public inplan(BigDecimal inplan_num, String inplan_name, Timestamp inplan_date, Timestamp inplan_time,
			String plan_tour, String mem_id) {
		super();
		this.inplan_num = inplan_num;
		this.inplan_name = inplan_name;
		this.inplan_date = inplan_date;
		this.inplan_time = inplan_time;
		this.plan_tour = plan_tour;
		this.mem_id = mem_id;
	}

	
	
}
