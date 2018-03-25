package com.jd.dao;

import com.jd.entity.User;

public interface UserDao {
    int deleteByPrimaryKey(Long USERID);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long USERID);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User login(User user);

	User selectByUsername(String username);

}