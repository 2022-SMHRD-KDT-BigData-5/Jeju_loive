package com.smhrd.domain;

import java.sql.Timestamp;

public class diaryAlbum {
	private Timestamp d_tripday;
	private String p_loc;
	private String p_memid;
	
	public diaryAlbum(Timestamp d_tripday, String p_loc, String p_memid) {
		super();
		this.d_tripday = d_tripday;
		this.p_loc = p_loc;
		this.p_memid = p_memid;
	}
	
	
	
	
	
	



	


	public diaryAlbum(Timestamp d_tripday, String p_memid) {
		super();
		this.d_tripday = d_tripday;
		this.p_memid = p_memid;
	}












	public Timestamp getD_tripday() {
		return d_tripday;
	}
	public String getP_loc() {
		return p_loc;
	}
	public String getP_memid() {
		return p_memid;
	}
	
	
}
