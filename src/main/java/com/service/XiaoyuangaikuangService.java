package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XiaoyuangaikuangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XiaoyuangaikuangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XiaoyuangaikuangView;


/**
 * 校园概况
 *
 * @author 
 * @email 
 * @date 2021-03-08 15:26:55
 */
public interface XiaoyuangaikuangService extends IService<XiaoyuangaikuangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiaoyuangaikuangVO> selectListVO(Wrapper<XiaoyuangaikuangEntity> wrapper);
   	
   	XiaoyuangaikuangVO selectVO(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
   	
   	List<XiaoyuangaikuangView> selectListView(Wrapper<XiaoyuangaikuangEntity> wrapper);
   	
   	XiaoyuangaikuangView selectView(@Param("ew") Wrapper<XiaoyuangaikuangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiaoyuangaikuangEntity> wrapper);
   	
}

