package com.jd.entity;

import java.util.Date;

public class User {
    private Long USERID;

    private String USERNAME;

    private String PASSWORD;

    private String TELEPHONE;

    private String EMAIL;

    private String HEADPIC;

    private String LOCKED;

    private String VIP;

    private Date REGISTTIME;

    private Long BALANCE;

    public Long getUSERID() {
        return USERID;
    }

    public void setUSERID(Long USERID) {
        this.USERID = USERID;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME == null ? null : USERNAME.trim();
    }

    public String getPASSWORD() {
        return PASSWORD;
    }

    public void setPASSWORD(String PASSWORD) {
        this.PASSWORD = PASSWORD == null ? null : PASSWORD.trim();
    }

    public String getTELEPHONE() {
        return TELEPHONE;
    }

    public void setTELEPHONE(String TELEPHONE) {
        this.TELEPHONE = TELEPHONE == null ? null : TELEPHONE.trim();
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL == null ? null : EMAIL.trim();
    }

    public String getHEADPIC() {
        return HEADPIC;
    }

    public void setHEADPIC(String HEADPIC) {
        this.HEADPIC = HEADPIC == null ? null : HEADPIC.trim();
    }

    public String getLOCKED() {
        return LOCKED;
    }

    public void setLOCKED(String LOCKED) {
        this.LOCKED = LOCKED == null ? null : LOCKED.trim();
    }

    public String getVIP() {
        return VIP;
    }

    public void setVIP(String VIP) {
        this.VIP = VIP == null ? null : VIP.trim();
    }

    public Date getREGISTTIME() {
        return REGISTTIME;
    }

    public void setREGISTTIME(Date REGISTTIME) {
        this.REGISTTIME = REGISTTIME;
    }

    public Long getBALANCE() {
        return BALANCE;
    }

    public void setBALANCE(Long BALANCE) {
        this.BALANCE = BALANCE;
    }
}