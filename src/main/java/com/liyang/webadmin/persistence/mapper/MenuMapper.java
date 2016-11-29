package com.liyang.webadmin.persistence.mapper;

import java.util.List;

import com.liyang.authc.ZtreeEntity;
import com.liyang.webadmin.entity.Menu;

public interface MenuMapper {
	
	List<Menu> findMenus();
	
	void save(Menu entity);
	
	void delete(String id);
	
	
	Menu findRoot();
	
	List<Menu> findChildren(String id);
	
	Menu findById(String id);
	
	void update(Menu entity);
	
	List<ZtreeEntity> findZtreeEntity();

}