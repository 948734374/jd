package com.jd.entity;

import java.util.Date;
import java.util.List;

public class Tradeinfo {
    private List<Details> details;
	
	public List<Details> getDetails() {
		return details;
	}

	public void setDetails(List<Details> details) {
		this.details = details;
	}

	private Long TRADENO;

    private Long USERID;

    private Date TRADETIME;

    private Long AMOUNT;

    private Long TOTAL;

    private Long ADDRESSID;

    private String TRADESTATE;

    private String TRADETYPE;

    public Long getTRADENO() {
        return TRADENO;
    }

    public void setTRADENO(Long TRADENO) {
        this.TRADENO = TRADENO;
    }

    public Long getUSERID() {
        return USERID;
    }

    public void setUSERID(Long USERID) {
        this.USERID = USERID;
    }

    public Date getTRADETIME() {
        return TRADETIME;
    }

    public void setTRADETIME(Date TRADETIME) {
        this.TRADETIME = TRADETIME;
    }

    public Long getAMOUNT() {
        return AMOUNT;
    }

    public void setAMOUNT(Long AMOUNT) {
        this.AMOUNT = AMOUNT;
    }

    public Long getTOTAL() {
        return TOTAL;
    }

    public void setTOTAL(Long TOTAL) {
        this.TOTAL = TOTAL;
    }

    public Long getADDRESSID() {
        return ADDRESSID;
    }

    public void setADDRESSID(Long ADDRESSID) {
        this.ADDRESSID = ADDRESSID;
    }

    public String getTRADESTATE() {
        return TRADESTATE;
    }

    public void setTRADESTATE(String TRADESTATE) {
        this.TRADESTATE = TRADESTATE == null ? null : TRADESTATE.trim();
    }

    public String getTRADETYPE() {
        return TRADETYPE;
    }

    public void setTRADETYPE(String TRADETYPE) {
        this.TRADETYPE = TRADETYPE == null ? null : TRADETYPE.trim();
    }
}