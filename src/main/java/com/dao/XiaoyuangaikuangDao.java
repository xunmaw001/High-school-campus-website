package com.dao;

import com.entity.XiaoyuangaikuangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiaoyuangaikuangVO;
import com.entity.view.XiaoyuangaikuangView;


/**
 * 校园概况
 * 
 * @author 
 * @email 
 * @date 2021-03-08 15:26:55
 */
public interface XiaoyuangaikuangDao extends BaseMapper<XiaoyuangaikuangEntity> {
	
	List<XiaoyuangaikuangVO> selectListVO(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
	
	XiaoyuangaikuangVO selectVO(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
	
	List<XiaoyuangaikuangView> selectListView(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);

	List<XiaoyuangaikuangView> selectListView(Pagination page,@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
	
	XiaoyuangaikuangView selectView(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
	
}
