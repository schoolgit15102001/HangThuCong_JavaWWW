package com.se.baitaplonwww.nhom11.adminController;


import com.se.baitaplonwww.nhom11.service.AdminService;
import com.se.baitaplonwww.nhom11.serviceImpl.AdminServicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/admin")
public class AdminDeleteController {
	private static final long serialVersionUID = 1L;
        @Autowired
	AdminService adminService = new AdminServicesImpl();
	
	@GetMapping("/delete")
	public String deleteAdmin(@RequestParam("admin-id") String admin_id,Model theModel) {	   
		adminService.delete(admin_id);	
		theModel.addAttribute("adminlist", adminService.getAll());   
                return "admin";
	}
}

