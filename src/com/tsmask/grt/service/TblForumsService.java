package com.tsmask.grt.service;

import java.util.List;

import com.tsmask.grt.pojo.TblForums;

/**
 * TblForumsService 版块服务接口
 * 
 * @author tsmak
 *
 */
public interface TblForumsService {

	// 查询所有信息
	List<TblForums> findAll();

	// 通过主键查询
	TblForums findByID(Integer id);

}