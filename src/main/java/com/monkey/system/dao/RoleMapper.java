package com.monkey.system.dao;

import java.util.List;

import com.monkey.common.config.MyMapper;
import com.monkey.system.domain.Role;
import com.monkey.system.domain.RoleWithMenu;

public interface RoleMapper extends MyMapper<Role> {
	
	List<Role> findUserRole(String userName);
	
	List<RoleWithMenu> findById(Long roleId);
}