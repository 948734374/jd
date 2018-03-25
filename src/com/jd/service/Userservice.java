package com.jd.service;

import com.jd.entity.User;

public interface Userservice {
  public User login(User user);
  public int register(User user);
  
}
