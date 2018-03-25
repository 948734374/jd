package com.jd.service;

import java.util.List;

import com.jd.entity.Commodity;

public interface SearchService {
	List<Commodity> search(String content);
	Commodity selectByPrimaryKey(Long comId);

}
