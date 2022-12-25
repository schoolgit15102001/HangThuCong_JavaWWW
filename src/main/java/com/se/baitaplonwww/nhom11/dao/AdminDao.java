package com.se.baitaplonwww.nhom11.dao; 
 
import com.se.baitaplonwww.nhom11.model.Admin;
import java.util.List;
 
public interface AdminDao { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 
	
	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
	
} 
