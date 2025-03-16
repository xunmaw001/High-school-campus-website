package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MingshifengcaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MingshifengcaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MingshifengcaiView;


/**
 * 名师风采
 *
 * @author 
 * @email 
 * @date 2021-03-08 15:26:55
 */
public interface MingshifengcaiService extends IService<MingshifengcaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MingshifengcaiVO> selectListVO(Wrapper<MingshifengcaiEntity> wrapper);
   	
   	MingshifengcaiVO selectVO(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
   	
   	List<MingshifengcaiView> selectListView(Wrapper<MingshifengcaiEntity> wrapper);
   	
   	MingshifengcaiView selectView(@Param("ew") Wrapper<MingshifengcaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MingshifengcaiEntity> wrapper);
   	
}

