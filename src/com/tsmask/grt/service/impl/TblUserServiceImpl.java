package com.tsmask.grt.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.TblUserMapper;
import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblUserService;

/**
 * TblUserServiceImpl 用户服务接口实现类
 * 
 * @author tsmak
 *
 */
public class TblUserServiceImpl implements TblUserService {

	@Autowired
	TblUserMapper tblUserMapper;

	// 查询所有
	@Override
	public List<TblUser> findAll() {
		return tblUserMapper.findAll();
	}

	// 通过主键查询
	@Override
	public TblUser findByID(Integer uid) {
		return tblUserMapper.findByID(uid);
	}

	// 通过用户名查询
	@Override
	public TblUser findByUserName(String username) {
		return tblUserMapper.findByUserName(username);
	}

	// 通过用户名密码查询
	@Override
	public TblUser findByUserNameAndPassword(TblUser tblUser) {
		return tblUserMapper.findByUserNameAndPassword(tblUser);
	}

	// 通过手机号密码查询
	@Override
	public TblUser findByPhoneNumAndPassword(TblUser tblUser) {
		return tblUserMapper.findByPhoneNumAndPassword(tblUser);
	}

	// 通过Email查询
	@Override
	public List<TblUser> findByEmail(String email) {
		return tblUserMapper.findByEmail(email);
	}

	// 得到数据库中总条数
	@Override
	public long count() {
		return tblUserMapper.count();
	}

	// 通过主键删除
	@Override
	public int deleteByID(Integer uid) {
		return tblUserMapper.deleteByID(uid);
	}
 
	// 选择性插入数据
	@Override
	public int insertSelective(TblUser tblUser) {
		return tblUserMapper.insertSelective(tblUser);
	}

	// 通过主键选择性更新修改map
	@Override
	public int updateByMapSelective(Map<String, Object> map) {
		return tblUserMapper.updateByMapSelective(map);
	}

	// 通过主键选择性更新修改tbluser
	@Override
	public int updateByUserSelective(TblUser tblUser) {
		return tblUserMapper.updateByUserSelective(tblUser);
	}
  
}
