package com.monkey.job.dao;

import java.util.List;

import com.monkey.common.config.MyMapper;
import com.monkey.job.domain.Job;

public interface JobMapper extends MyMapper<Job> {
	
	List<Job> queryList();
}