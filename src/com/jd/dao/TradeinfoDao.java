package com.jd.dao;

import com.jd.entity.Tradeinfo;

public interface TradeinfoDao {
    int deleteByPrimaryKey(Long TRADENO);

    int insert(Tradeinfo record);

    int insertSelective(Tradeinfo record);

    Tradeinfo selectByPrimaryKey(Long TRADENO);

    int updateByPrimaryKeySelective(Tradeinfo record);

    int updateByPrimaryKey(Tradeinfo record);
}