package com.monkey.system.service;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.monkey.common.service.IService;
import com.monkey.system.domain.SysLog;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.scheduling.annotation.Async;

public interface LogService extends IService<SysLog> {
	
	List<SysLog> findAllLogs(SysLog log);
	
	void deleteLogs(String logIds);

	@Async
	void saveLog(ProceedingJoinPoint point, SysLog log) throws JsonProcessingException;
}
