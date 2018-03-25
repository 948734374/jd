package com.jd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jd.dao.CommodityDao;
import com.jd.entity.Commodity;

@Service
public class Commodityimpl implements Commodityservice {
	@Autowired
	CommodityDao commodityDao;

	@Override
	public List<Commodity> search(Commodity commodity) {
		List<Commodity> commodities = commodityDao.search(commodity);
		return commodities;
	}

	@Override
	public Commodity selectByPrimaryKey(Long COMId) {
		// TODO Auto-generated method stub

		return commodityDao.selectByPrimaryKey(COMId);
	}

	@Override
	public List<Commodity> searchall() {
		return commodityDao.searchall();
	}

	@Override
	public int addProduct(Commodity commodity) {
		// TODO Auto-generated method stub
		return 0;
	}

}
