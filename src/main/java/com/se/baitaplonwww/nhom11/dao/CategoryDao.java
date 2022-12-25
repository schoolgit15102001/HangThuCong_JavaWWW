package com.se.baitaplonwww.nhom11.dao;

import com.se.baitaplonwww.nhom11.model.Catalog;
import java.util.List;

public interface CategoryDao {
	void insert(Catalog category);

	void edit(Catalog category);

	void delete(String id);

	Catalog get(int id);
	
	Catalog get(String name);

	List<Catalog> getAll();
	
	List<Catalog> getCateByProduct(int id);

}
