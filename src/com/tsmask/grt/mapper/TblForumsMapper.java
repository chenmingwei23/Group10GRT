package com.tsmask.grt.mapper;

import java.util.List;

import com.tsmask.grt.pojo.TblForums;

/**
 * TblForumsMapper 版块服务映射接口
 * 
 * @author tsmak
 *
 */
public interface TblForumsMapper {

	// 查询所有信息
	List<TblForums> findAll();

	// 通过主键查询
	TblForums findByID(Integer id);

}