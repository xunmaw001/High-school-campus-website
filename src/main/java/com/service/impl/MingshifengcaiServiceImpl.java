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


import com.dao.MingshifengcaiDao;
import com.entity.MingshifengcaiEntity;
import com.service.MingshifengcaiService;
import com.entity.vo.MingshifengcaiVO;
import com.entity.view.MingshifengcaiView;

@Service("mingshifengcaiService")
public class MingshifengcaiServiceImpl extends ServiceImpl<MingshifengcaiDao, MingshifengcaiEntity> implements MingshifengcaiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MingshifengcaiEntity> page = this.selectPage(
                new Query<MingshifengcaiEntity>(params).getPage(),
                new EntityWrapper<MingshifengcaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MingshifengcaiEntity> wrapper) {
		  Page<MingshifengcaiView> page =new Query<MingshifengcaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MingshifengcaiVO> selectListVO(Wrapper<MingshifengcaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MingshifengcaiVO selectVO(Wrapper<MingshifengcaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MingshifengcaiView> selectListView(Wrapper<MingshifengcaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MingshifengcaiView selectView(Wrapper<MingshifengcaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
