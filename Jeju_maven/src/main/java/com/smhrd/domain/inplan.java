package com.smhrd.domain;

public class inplan {
	private int inplan_num;
	private String inplan_name;
	private String inplan_date;
	private String inplan_time;
	private String inplan_tour;
	private String plan_pen;
	private String mem_id;
	
	public int getInplan_num() {
		return inplan_num;
	}

	public String getInplan_name() {
		return inplan_name;
	}

	public String getInplan_date() {
		return inplan_date;
	}

	public String getInplan_time() {
		return inplan_time;
	}

	public String getInplan_tour() {
		return inplan_tour;
	}

	public String getPlan_pen() {
		return plan_pen;
	}

	public String getMem_id() {
		return mem_id;
	}

	public inplan(int inplan_num, String inplan_name, String inplan_date, String inplan_time, String inplan_tour,
			String plan_pen, String mem_id) {
		super();
		this.inplan_num = inplan_num;
		this.inplan_name = inplan_name;
		this.inplan_date = inplan_date;
		this.inplan_time = inplan_time;
		this.inplan_tour = inplan_tour;
		this.plan_pen = plan_pen;
		this.mem_id = mem_id;
	}
	
}
