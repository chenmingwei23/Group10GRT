package com.tsmask.grt.mapper;

import java.util.List;
import java.util.Map;

import com.tsmask.grt.pojo.TblUser;

/**
 * TblUserMapper 用户服务映射接口
 * 
 * @author tsmak
 *
 */
public interface TblUserMapper {

	// 查询所有
	List<TblUser> findAll();

	// 通过ID查询
	TblUser findByID(Integer id);

	// 通过用户名查询
	TblUser findByUserName(String username);

	// 通过用户名密码查询
	TblUser findByUserNameAndPassword(TblUser tblUser);

	// 通过手机号密码查询
	TblUser findByPhoneNumAndPassword(TblUser tblUser);

	// 通过Email查询
	List<TblUser> findByEmail(String email);

	// 得到数据库中总条数
	long count();

	// 通过ID删除
	int deleteByID(Integer id);

	// 选择性插入数据
	int insertSelective(TblUser tblUser);

	// 选择性插入数据
	int insertByUserSelective(TblUser tblUser);

	// 通过主键选择性更新修改map
	int updateByMapSelective(Map<String, Object> map);

	// 通过主键选择性更新修改tbluser
	int updateByUserSelective(TblUser tblUser);

}