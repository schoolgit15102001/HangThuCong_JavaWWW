package com.se.baitaplonwww.nhom11.dao;

import com.se.baitaplonwww.nhom11.model.Admin;
import com.se.baitaplonwww.nhom11.model.User;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class AdminLoginDao {

	@Autowired
	private SessionFactory sessionFactory;


	@Transactional
	public Admin checkAdminLogin(String username, String password) {
		try {

			Session currentSession = sessionFactory.getCurrentSession();
			Query<Admin> theQuery = null;
			theQuery = currentSession.createQuery("from Admin where username = :username and password = :pass",
					Admin.class);
			theQuery.setParameter("username", username);
			theQuery.setParameter("pass", password);
			List<Admin> ad = theQuery.getResultList();
			
			if (ad  != null) {
				Admin admin;
				admin = new Admin(ad.get(0).getUsername(), ad.get(0).getPassword());

				return admin;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
