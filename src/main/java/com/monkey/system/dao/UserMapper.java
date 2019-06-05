package com.monkey.system.dao;

import java.util.List;

import com.monkey.common.config.MyMapper;
import com.monkey.system.domain.User;
import com.monkey.system.domain.UserWithRole;

public interface UserMapper extends MyMapper<User> {

	List<User> findUserWithDept(User user);
	
	List<UserWithRole> findUserWithRole(Long userId);
	
	User findUserProfile(User user);
	
	String selectSaltByUsername(String username);
}