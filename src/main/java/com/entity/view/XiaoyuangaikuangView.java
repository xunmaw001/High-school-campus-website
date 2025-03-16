package com.entity.view;

import com.entity.XiaoyuangaikuangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 校园概况
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-08 15:26:55
 */
@TableName("xiaoyuangaikuang")
public class XiaoyuangaikuangView  extends XiaoyuangaikuangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoyuangaikuangView(){
	}
 
 	public XiaoyuangaikuangView(XiaoyuangaikuangEntity xiaoyuangaikuangEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoyuangaikuangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
