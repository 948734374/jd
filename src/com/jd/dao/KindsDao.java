package com.jd.dao;

import com.jd.entity.Kinds;

public interface KindsDao {
    int deleteByPrimaryKey(Long KINDSID);

    int insert(Kinds record);

    int insertSelective(Kinds record);

    Kinds selectByPrimaryKey(Long KINDSID);

    int updateByPrimaryKeySelective(Kinds record);

    int updateByPrimaryKey(Kinds record);
}