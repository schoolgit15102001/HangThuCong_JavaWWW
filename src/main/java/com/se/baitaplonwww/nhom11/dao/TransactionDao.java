package com.se.baitaplonwww.nhom11.dao;
import com.se.baitaplonwww.nhom11.model.Transactions;
import java.util.List;

public interface TransactionDao {
 
    /**
     *
     * @param transaction
     */
        void insert(Transactions transaction); 
	 
	void edit(Transactions admin); 
	
	void delete(String id); 
        
	Transactions get(int id); 
	 
	Transactions get(String name); 
 
	List<Transactions> getAll(); 
        
	
	
}
