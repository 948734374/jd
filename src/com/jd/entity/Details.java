package com.jd.entity;

public class Details {
    private Long DETAILSID;

    

    private Long COMID;
    
    private Commodity commodity;

    private Long AMOUNT;

    public Long getDETAILSID() {
        return DETAILSID;
    }

    public void setDETAILSID(Long DETAILSID) {
        this.DETAILSID = DETAILSID;
    }

  
    public Long getCOMID() {
        return COMID;
    }

    public void setCOMID(Long COMID) {
        this.COMID = COMID;
    }

    public Long getAMOUNT() {
        return AMOUNT;
    }

    public void setAMOUNT(Long AMOUNT) {
        this.AMOUNT = AMOUNT;
    }

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
}