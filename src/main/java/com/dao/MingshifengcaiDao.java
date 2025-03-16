package com.dao;

import com.entity.MingshifengcaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MingshifengcaiVO;
import com.entity.view.MingshifengcaiView;


/**
 * 名师风采
 * 
 * @author 
 * @email 
 * @date 2021-03-08 15:26:55
 */
public interface MingshifengcaiDao extends BaseMapper<MingshifengcaiEntity> {
	
	List<MingshifengcaiVO> selectListVO(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
	
	MingshifengcaiVO selectVO(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
	
	List<MingshifengcaiView> selectListView(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);

	List<MingshifengcaiView> selectListView(Pagination page,@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
	
	MingshifengcaiView selectView(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
	
}
