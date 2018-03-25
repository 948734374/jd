package com.jd.dao;

import java.util.List;

import com.jd.entity.Commodity;

public interface CommodityDao {
	int deleteByPrimaryKey(Long COMID);

	int insert(Commodity record);

	int insertSelective(Commodity record);

	Commodity selectByPrimaryKey(Long COMID);

	int updateByPrimaryKeySelective(Commodity record);

	int updateByPrimaryKey(Commodity record);

	List<Commodity> search(Commodity commodity);

	List<Commodity> searchall();

	List<Commodity> selectByContent(String content);
}