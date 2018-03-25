package com.jd.entity;

import java.util.Date;

public class Recored {
    private Long RECORDID;

    private Long USERID;

    private Date TRADETIME;

    private String TRADETYPE;

    private Long TRADEAMOUNT;

    private Long TRADENUM;

    public Long getRECORDID() {
        return RECORDID;
    }

    public void setRECORDID(Long RECORDID) {
        this.RECORDID = RECORDID;
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

    public String getTRADETYPE() {
        return TRADETYPE;
    }

    public void setTRADETYPE(String TRADETYPE) {
        this.TRADETYPE = TRADETYPE == null ? null : TRADETYPE.trim();
    }

    public Long getTRADEAMOUNT() {
        return TRADEAMOUNT;
    }

    public void setTRADEAMOUNT(Long TRADEAMOUNT) {
        this.TRADEAMOUNT = TRADEAMOUNT;
    }

    public Long getTRADENUM() {
        return TRADENUM;
    }

    public void setTRADENUM(Long TRADENUM) {
        this.TRADENUM = TRADENUM;
    }
}