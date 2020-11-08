package com.tsmask.grt.service;

import com.tsmask.grt.pojo.TblAdmin;

/**
 * TblAdminService 管理员服务接口
 * 
 * @author tsmak
 *
 */
public interface TblAdminService {

	// 通过管理员名称和密码查询登录
	TblAdmin findByAdminAndPassword(TblAdmin tblAdmin);

	// 通过主键选择修改更新
	int updateByAdminSelective(TblAdmin tblAdmin);

}