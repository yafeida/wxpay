package com.monkey.system.service;

import java.util.List;

import com.monkey.system.domain.UserOnline;

public interface SessionService {

	List<UserOnline> list();

	boolean forceLogout(String sessionId);
}
