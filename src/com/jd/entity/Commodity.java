package com.jd.entity;

public class Commodity {
    private Long COMID;

    private String COMNAME;

    private String COMNNAME;

    private Long KINDSID;

    private Long PRICE;

    private Long AMOUNT;

    private String DESCRIBE;

    private String SALEMSG;

    private Long SALEAMOUNT;

    private String IMG;

    public Long getCOMID() {
        return COMID;
    }

    public void setCOMID(Long COMID) {
        this.COMID = COMID;
    }

    public String getCOMNAME() {
        return COMNAME;
    }

    public void setCOMNAME(String COMNAME) {
        this.COMNAME = COMNAME == null ? null : COMNAME.trim();
    }

    public String getCOMNNAME() {
        return COMNNAME;
    }

    public void setCOMNNAME(String COMNNAME) {
        this.COMNNAME = COMNNAME == null ? null : COMNNAME.trim();
    }

    public Long getKINDSID() {
        return KINDSID;
    }

    public void setKINDSID(Long KINDSID) {
        this.KINDSID = KINDSID;
    }

    public Long getPRICE() {
        return PRICE;
    }

    public void setPRICE(Long PRICE) {
        this.PRICE = PRICE;
    }

    public Long getAMOUNT() {
        return AMOUNT;
    }

    public void setAMOUNT(Long AMOUNT) {
        this.AMOUNT = AMOUNT;
    }

    public String getDESCRIBE() {
        return DESCRIBE;
    }

    public void setDESCRIBE(String DESCRIBE) {
        this.DESCRIBE = DESCRIBE == null ? null : DESCRIBE.trim();
    }

    public String getSALEMSG() {
        return SALEMSG;
    }

    public void setSALEMSG(String SALEMSG) {
        this.SALEMSG = SALEMSG == null ? null : SALEMSG.trim();
    }

    public Long getSALEAMOUNT() {
        return SALEAMOUNT;
    }

    public void setSALEAMOUNT(Long SALEAMOUNT) {
        this.SALEAMOUNT = SALEAMOUNT;
    }

    public String getIMG() {
        return IMG;
    }

    public void setIMG(String IMG) {
        this.IMG = IMG == null ? null : IMG.trim();
    }
}