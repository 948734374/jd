package com.jd.entity;

public class Kinds {
	private Long KINDSID;

	private String KINDSNAME;

	private Long PKINDSID;

	public Long getKINDSID() {
		return KINDSID;
	}

	public void setKINDSID(Long KINDSID) {
		this.KINDSID = KINDSID;
	}

	public String getKINDSNAME() {
		return KINDSNAME;
	}

	public void setKINDSNAME(String KINDSNAME) {
		this.KINDSNAME = KINDSNAME == null ? null : KINDSNAME.trim();
	}

	public Long getPKINDSID() {
		return PKINDSID;
	}

	public void setPKINDSID(Long PKINDSID) {
		this.PKINDSID = PKINDSID;
	}
}