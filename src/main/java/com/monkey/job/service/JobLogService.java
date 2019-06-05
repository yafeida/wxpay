package com.monkey.job.service;

import java.util.List;

import com.monkey.common.service.IService;
import com.monkey.job.domain.JobLog;

public interface JobLogService extends IService<JobLog>{

	List<JobLog> findAllJobLogs(JobLog jobLog);

	void saveJobLog(JobLog log);
	
	void deleteBatch(String jobLogIds);
}
