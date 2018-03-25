package com.jd.entity;

public class CarItem {
	Commodity commodity;
	Long goodid;
	int amount;

	public CarItem(Commodity commodity, int amount) {
		super();
		this.commodity = commodity;

		this.amount = amount;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public Long getGoodid() {
		return goodid;
	}

	public void setGoodid(Long goodid) {
		this.goodid = goodid;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
