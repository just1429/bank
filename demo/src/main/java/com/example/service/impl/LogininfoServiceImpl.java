package com.example.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mapper.LogininfoMapper;
import com.example.pojo.Logininfo;
import com.example.service.ILogininfoService;
@Service
public class LogininfoServiceImpl implements ILogininfoService {

	
	@Autowired
	private LogininfoMapper logininfoMapper;
	
	public List<Logininfo> queryAll() {
		return logininfoMapper.queryAll();
	}

}
