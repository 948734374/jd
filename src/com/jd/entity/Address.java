package com.jd.entity;

public class Address {
    private Long ADDRID;

    private Long USERID;

    private String PROVINCE;

    private String CITY;

    private String ADDR;

    private String CONSIGNEE;

    private String CONTACT;

    private String CONTY;

    public Long getADDRID() {
        return ADDRID;
    }

    public void setADDRID(Long ADDRID) {
        this.ADDRID = ADDRID;
    }

    public Long getUSERID() {
        return USERID;
    }

    public void setUSERID(Long USERID) {
        this.USERID = USERID;
    }

    public String getPROVINCE() {
        return PROVINCE;
    }

    public void setPROVINCE(String PROVINCE) {
        this.PROVINCE = PROVINCE == null ? null : PROVINCE.trim();
    }

    public String getCITY() {
        return CITY;
    }

    public void setCITY(String CITY) {
        this.CITY = CITY == null ? null : CITY.trim();
    }

    public String getADDR() {
        return ADDR;
    }

    public void setADDR(String ADDR) {
        this.ADDR = ADDR == null ? null : ADDR.trim();
    }

    public String getCONSIGNEE() {
        return CONSIGNEE;
    }

    public void setCONSIGNEE(String CONSIGNEE) {
        this.CONSIGNEE = CONSIGNEE == null ? null : CONSIGNEE.trim();
    }

    public String getCONTACT() {
        return CONTACT;
    }

    public void setCONTACT(String CONTACT) {
        this.CONTACT = CONTACT == null ? null : CONTACT.trim();
    }

    public String getCONTY() {
        return CONTY;
    }

    public void setCONTY(String CONTY) {
        this.CONTY = CONTY == null ? null : CONTY.trim();
    }
}