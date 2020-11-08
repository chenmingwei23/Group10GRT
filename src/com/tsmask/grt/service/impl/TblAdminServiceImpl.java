package com.tsmask.grt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.TblAdminMapper;
import com.tsmask.grt.pojo.TblAdmin;
import com.tsmask.grt.service.TblAdminService;

/**
 * TblAdminServiceImpl 管理员服务接口实现类
 * 
 * @author tsmak
 *
 */
public class TblAdminServiceImpl implements TblAdminService {

	@Autowired
	TblAdminMapper tblAdminMapper;

	// 通过管理员名称和密码查询登录
	@Override
	public TblAdmin findByAdminAndPassword(TblAdmin tblAdmin) {
		return tblAdminMapper.findByAdminAndPassword(tblAdmin);
	}

	// 通过主键选择修改更新
	@Override
	public int updateByAdminSelective(TblAdmin tblAdmin) {
		return tblAdminMapper.updateByAdminSelective(tblAdmin);
	}

}
