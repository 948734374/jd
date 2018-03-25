package com.jd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jd.dao.UserDao;
import com.jd.entity.User;

@Service
public class Userserviceimpl implements Userservice {

	@Autowired
	UserDao userDao;

	@Override
	public User login(User user) {
		User m = userDao.login(user);
		return m;
	}

	@Override
	public int register(User user) {
		int b = userDao.insertSelective(user);
		return b;
	}

}
