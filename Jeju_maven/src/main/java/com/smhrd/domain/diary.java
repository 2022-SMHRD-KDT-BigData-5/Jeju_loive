package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class diary {
	private BigDecimal dia_num;
	private String dia_name ;
	private Timestamp dia_tripday;
	private BigDecimal dia_share;
	private Timestamp dia_date;//Oracle date
	private String mem_id;
	private String dia_content;
	
	
	
	
	public diary(BigDecimal dia_num, String dia_name, Timestamp dia_tripday, BigDecimal dia_share, Timestamp dia_date,
			String mem_id, String dia_content) {
		super();
		this.dia_num = dia_num;
		this.dia_name = dia_name;
		this.dia_tripday = dia_tripday;
		this.dia_share = dia_share;
		this.dia_date = dia_date;
		this.mem_id = mem_id;
		this.dia_content = dia_content;
	}
	
	public BigDecimal getDia_num() {
		return dia_num;
	}
	public String getDia_name() {
		return dia_name;
	}
	public Timestamp getDia_tripday() {
		return dia_tripday;
	}
	public BigDecimal getDia_share() {
		return dia_share;
	}
	public Timestamp getDia_date() {
		return dia_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public String getDia_content() {
		return dia_content;
	}
	
	
}
