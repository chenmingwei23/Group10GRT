package com.tsmask.grt.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.TblPostMapper;
import com.tsmask.grt.pojo.TblPost;
import com.tsmask.grt.service.TblPostService;

/**
 * TblPostServiceImpl 帖子服务接口实现类
 * 
 * @author tsmak
 *
 */
public class TblPostServiceImpl implements TblPostService {

	@Autowired
	TblPostMapper tblPostMapper;

	// 查询所有
	@Override
	public List<TblPost> findAll() {
		return tblPostMapper.findAll();
	}

	// 最大浏览量升序
	@Override
	public List<TblPost> findByPageViewsDESC() {
		return tblPostMapper.findByPageViewsDESC();
	}

	// 通过主键查找
	@Override
	public TblPost findByID(Integer id) {
		return tblPostMapper.findByID(id);
	}

	// 通过版块id查找
	@Override
	public List<TblPost> findByForumID(Integer forumid) {
		return tblPostMapper.findByForumID(forumid);
	}

	// 得到总数据条数
	@Override
	public long count() {
		return tblPostMapper.count();
	}
	
	// 选择性新增数据
	@Override
	public int insertSelective(TblPost tblPost) {
		return tblPostMapper.insertSelective(tblPost);
	}

	// 选择性更新修改map
	@Override
	public int updateByMapSelective(Map<String, Object> map) {
		return tblPostMapper.updateByMapSelective(map);
	}

}
