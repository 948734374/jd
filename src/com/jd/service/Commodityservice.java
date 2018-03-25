package com.jd.service;


import java.util.List;

import com.jd.entity.Commodity;

public interface Commodityservice {
	public List<Commodity> search(Commodity commodity);
	public Commodity selectByPrimaryKey(Long COMID);
	public List<Commodity> searchall();
	public int addProduct(Commodity commodity);
}
