package com.se.baitaplonwww.nhom11.service;

import com.se.baitaplonwww.nhom11.model.User;
import java.util.List;
public interface UserService {
	
void insert(User user);
	
	void edit(User user);
	
	void delete(int id);
	
	User get(int id);
	
	User get(String name);

	List<User> getAll();

}

