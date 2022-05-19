package com.smhrd.domain;

import java.math.BigDecimal;

public class tour {
	
	private BigDecimal num;
	private String name;
	private String address;
	private BigDecimal lo;
	private BigDecimal la;
	private BigDecimal tour_num;
	private BigDecimal t_num;
	private String t_add;
	
	
	//생성자
	public tour(BigDecimal num, String name, String address, BigDecimal lo, BigDecimal la) {
		super();
		this.num = num;
		this.name = name;
		this.address = address;
		this.lo = lo;
		this.la = la;
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
	public BigDecimal getLo() {
		return lo;
	}
	public BigDecimal getLa() {
		return la;
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
	public void setTour_num(BigDecimal tour_num) {
		this.tour_num = tour_num;
	}
	public String getT_add() {
		return t_add;
	}
	public void setT_address(String t_add) {
		this.t_add = t_add;
	}
	public BigDecimal getT_num() {
		return t_num;
	}
	public void setT_num(BigDecimal t_num) {
		this.t_num = t_num;
	}
	
	

	
	
	
}
