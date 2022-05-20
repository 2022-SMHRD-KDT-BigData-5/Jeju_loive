package com.smhrd.domain;

import java.math.BigDecimal;

public class tour {
	
	private BigDecimal num;
	private String name;
	private String address;
	private BigDecimal tour_num;
	private BigDecimal t_num;
	private String t_add;
	
	
	//생성자
	public tour(BigDecimal num, String name, String address) {
		super();
		this.num = num;
		this.name = name;
		this.address = address;
		
	}
	public BigDecimal getNum() {
		return num;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	
	
	public tour(BigDecimal tour_num, String t_add, BigDecimal t_num) {
		super();
		this.tour_num = tour_num;
		this.t_add = t_add;
		this.t_num = t_num;
	}
	public BigDecimal getTour_num() {
		return tour_num;
	}
	public String getT_add() {
		return t_add;
	}
	public BigDecimal getT_num() {
		return t_num;
	}
	
	

	
	
	
}
