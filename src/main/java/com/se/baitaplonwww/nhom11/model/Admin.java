package com.se.baitaplonwww.nhom11.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String username;
    String password;
    String name;

    public Admin() {
    }
	public Admin(int id, String username, String password, String name) {
        super();
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
    }

    public Admin(String username2, String password2) {
		// TODO Auto-generated constructor stub
    	this.username = username2;
        this.password = password2;
	}
	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + "]";
    }
}
