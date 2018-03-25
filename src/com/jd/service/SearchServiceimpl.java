package com.jd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jd.dao.CommodityDao;
import com.jd.entity.Commodity;
@Service
public class SearchServiceimpl implements SearchService {

	@Autowired
	CommodityDao comm;
	
	@Override
	public List<Commodity> search(String content) {
		return comm.selectByContent(content);
	}

	@Override
	public Commodity selectByPrimaryKey(Long comId) {
		
			return comm.selectByPrimaryKey(comId);
		}	
	}


