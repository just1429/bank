package com.example.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.pojo.Logininfo;

@Repository
public interface LogininfoMapper {
	/**
	 * 查询所有信息
	 * @return
	 */
	List<Logininfo> queryAll();
}
