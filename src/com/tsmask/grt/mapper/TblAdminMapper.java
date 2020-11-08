package com.tsmask.grt.mapper;

import com.tsmask.grt.pojo.TblAdmin;

/**
 * TblAdminMapper 管理员服务映射接口
 * 
 * @author tsmak
 *
 */
public interface TblAdminMapper {

	// 通过管理员名称和密码查询登录
	TblAdmin findByAdminAndPassword(TblAdmin tblAdmin);

	// 通过主键选择修改更新
	int updateByAdminSelective(TblAdmin tblAdmin);
	
}