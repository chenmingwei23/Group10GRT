package com.tsmask.grt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.TblForumsMapper;
import com.tsmask.grt.pojo.TblForums;
import com.tsmask.grt.service.TblForumsService;

/**
 * TblForumsServiceImpl 版块服务接口实现类
 * 
 * @author tsmak
 *
 */
public class TblForumsServiceImpl implements TblForumsService {

	@Autowired
	TblForumsMapper tblForumsMapper;

	// 查询所有信息
	@Override
	public List<TblForums> findAll() {
		return tblForumsMapper.findAll();
	}

	// 通过主键查询
	@Override
	public TblForums findByID(Integer id) {
		return tblForumsMapper.findByID(id);
	} 
}
