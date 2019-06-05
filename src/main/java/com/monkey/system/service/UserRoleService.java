package com.monkey.system.service;

import com.monkey.common.service.IService;
import com.monkey.system.domain.UserRole;

public interface UserRoleService extends IService<UserRole> {

	void deleteUserRolesByRoleId(String roleIds);

	void deleteUserRolesByUserId(String userIds);
}
