package com.jd.dao;

import com.jd.entity.Recored;

public interface RecoredDao {
    int deleteByPrimaryKey(Long RECORDID);

    int insert(Recored record);

    int insertSelective(Recored record);

    Recored selectByPrimaryKey(Long RECORDID);

    int updateByPrimaryKeySelective(Recored record);

    int updateByPrimaryKey(Recored record);
}