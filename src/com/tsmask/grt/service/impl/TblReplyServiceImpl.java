package com.tsmask.grt.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.TblReplyMapper;
import com.tsmask.grt.pojo.TblReply;
import com.tsmask.grt.service.TblReplyService;

/**
 * TblReplyServiceImpl 回复服务接口实现类
 * 
 * @author tsmak
 *
 */
public class TblReplyServiceImpl implements TblReplyService {

	@Autowired
	TblReplyMapper tblReplyMapper;

	// 查询所有
	@Override
	public List<TblReply> findAll() {
		return tblReplyMapper.findAll();
	}

	// 通过主键查询
	@Override
	public TblReply findByID(Integer id) {
		return tblReplyMapper.findByID(id);
	}

	// 通过总帖子id查询
	@Override
	public List<TblReply> findByPostID(Integer reply_id) {
		return tblReplyMapper.findByPostID(reply_id);
	}

	// 得到数据库中总条数
	@Override
	public long count() {
		return tblReplyMapper.count();
	}

	// 选择性插入数据
	@Override
	public int insertSelective(TblReply tblReply) {
		return tblReplyMapper.insertSelective(tblReply);
	}

	// 通过主键选择性更新数据map
	@Override
	public int updateByMapSelective(Map<String, Object> map) {
		return tblReplyMapper.updateByMapSelective(map);
	}

}
