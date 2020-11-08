package com.tsmask.grt.mapper;

import java.util.List;
import java.util.Map;

import com.tsmask.grt.pojo.TblPost;

/**
 * TblPostMapper 帖子服务映射接口
 * 
 * @author tsmak
 *
 */
public interface TblPostMapper {

	// 查询所有
	List<TblPost> findAll();

	// 最大浏览量升序
	List<TblPost> findByPageViewsDESC();

	// 通过ID查找
	TblPost findByID(Integer id);

	// 通过版块id查找
	List<TblPost> findByForumID(Integer forum_id);

	// 得到总数据条数
	long count();

	// 选择性新增数据
	int insertSelective(TblPost tblPost);

	// 选择性更新修改map
	int updateByMapSelective(Map<String, Object> map);

}