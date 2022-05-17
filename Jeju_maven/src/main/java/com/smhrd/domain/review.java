package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;


public class review {
	private BigDecimal rev_num;
	private BigDecimal tour_num;
	private String rev_user;
	private BigDecimal rev_star;
	private String rev_content;
	private Timestamp rev_time;
	
	//생성자
	public review(BigDecimal rev_num, BigDecimal tour_num, String rev_user, BigDecimal rev_star, String rev_content,
			Timestamp rev_time) {
		super();
		this.rev_num = rev_num;
		this.tour_num = tour_num;
		this.rev_user = rev_user;
		this.rev_star = rev_star;
		this.rev_content = rev_content;
		this.rev_time = rev_time;
	}
	
	//getters
	public BigDecimal getRev_num() {
		return rev_num;
	}
	public BigDecimal getTour_num() {
		return tour_num;
	}
	public String getRev_user() {
		return rev_user;
	}
	public BigDecimal getRev_star() {
		return rev_star;
	}
	public String getRev_content() {
		return rev_content;
	}
	public Timestamp getRev_time() {
		return rev_time;
	}
	
}


