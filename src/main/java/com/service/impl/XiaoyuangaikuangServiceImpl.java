package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XiaoyuangaikuangDao;
import com.entity.XiaoyuangaikuangEntity;
import com.service.XiaoyuangaikuangService;
import com.entity.vo.XiaoyuangaikuangVO;
import com.entity.view.XiaoyuangaikuangView;

@Service("xiaoyuangaikuangService")
public class XiaoyuangaikuangServiceImpl extends ServiceImpl<XiaoyuangaikuangDao, XiaoyuangaikuangEntity> implements XiaoyuangaikuangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoyuangaikuangEntity> page = this.selectPage(
                new Query<XiaoyuangaikuangEntity>(params).getPage(),
                new EntityWrapper<XiaoyuangaikuangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoyuangaikuangEntity> wrapper) {
		  Page<XiaoyuangaikuangView> page =new Query<XiaoyuangaikuangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiaoyuangaikuangVO> selectListVO(Wrapper<XiaoyuangaikuangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiaoyuangaikuangVO selectVO(Wrapper<XiaoyuangaikuangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiaoyuangaikuangView> selectListView(Wrapper<XiaoyuangaikuangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoyuangaikuangView selectView(Wrapper<XiaoyuangaikuangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
