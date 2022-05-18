package com.smhrd.domain;

import java.math.BigDecimal;

public class tour {
	
	private BigDecimal num;
	private String name;
	private String address;
	private BigDecimal lo;
	private BigDecimal la;
	
	
	
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
	
	

	
	
	
}
