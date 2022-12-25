package com.se.baitaplonwww.nhom11.service;

import com.se.baitaplonwww.nhom11.model.Transactions;
import java.util.List;


public interface TransactionService {
	void insert(Transactions transaction);
	 
	void edit(Transactions transaction); 

	void delete(String id); 
 
	Transactions get(int id); 
	 
	Transactions get(String name); 
 
	List<Transactions> getAll(); 

}
