package com.jd.dao;

import com.jd.entity.Address;

public interface AddressDao {
    int deleteByPrimaryKey(Long ADDRID);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Long ADDRID);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}