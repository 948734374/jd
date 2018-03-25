package com.jd.dao;

import com.jd.entity.Details;

public interface DetailsDao {
    int deleteByPrimaryKey(Long DETAILSID);

    int insert(Details record);

    int insertSelective(Details record);

    Details selectByPrimaryKey(Long DETAILSID);

    int updateByPrimaryKeySelective(Details record);

    int updateByPrimaryKey(Details record);
}