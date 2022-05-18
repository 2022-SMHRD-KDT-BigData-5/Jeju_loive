package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class diaryImg {
	
	private BigDecimal p_num;
	private BigDecimal d_num;
	private Timestamp d_tripday;
	private String p_oname;
	private String p_loc;
	private String p_memid;
	public diaryImg(BigDecimal p_num, BigDecimal d_num, Timestamp d_tripday, String p_oname, String p_loc,
			String p_memid) {
		super();
		this.p_num = p_num;
		this.d_num = d_num;
		this.d_tripday = d_tripday;
		this.p_oname = p_oname;
		this.p_loc = p_loc;
		this.p_memid = p_memid;
	}
	
	
	public diaryImg(BigDecimal d_num, Timestamp d_tripday, String p_oname, String p_loc, String p_memid) {
		super();
		this.d_num = d_num;
		this.d_tripday = d_tripday;
		this.p_oname = p_oname;
		this.p_loc = p_loc;
		this.p_memid = p_memid;
	}


	public diaryImg(BigDecimal d_num, Timestamp d_tripday, String p_oname) {
		super();
		this.d_num = d_num;
		this.d_tripday = d_tripday;
		this.p_oname = p_oname;
	}
	
	

	


	public diaryImg(Timestamp d_tripday, String p_memid) {
		super();
		this.d_tripday = d_tripday;
		this.p_memid = p_memid;
	}


	public BigDecimal getP_num() {
		return p_num;
	}
	public BigDecimal getD_num() {
		return d_num;
	}
	public Timestamp getD_tripday() {
		return d_tripday;
	}
	public String getP_oname() {
		return p_oname;
	}
	public String getP_loc() {
		return p_loc;
	}
	public String getP_memid() {
		return p_memid;
	}
	
	
	
}
