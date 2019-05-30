package com.example.service;

import java.util.List;

import com.example.pojo.Logininfo;

public interface ILogininfoService {
	/**
	 * 查询所有信息
	 * @return
	 */
	List<Logininfo> queryAll();
}
