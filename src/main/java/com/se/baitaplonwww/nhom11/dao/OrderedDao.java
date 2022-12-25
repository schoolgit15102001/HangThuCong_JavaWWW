package com.se.baitaplonwww.nhom11.dao;

import com.se.baitaplonwww.nhom11.model.Ordered;
import java.util.List;

public interface OrderedDao {
	void insert(Ordered ordered); 
	 
	void edit(Ordered ordered); 
	
	void delete(String id); 
 
	Ordered get(int id); 
	 
	Ordered get(String name); 
 
	List<Ordered> getAll();
}
