package com.se.baitaplonwww.nhom11.adminController;

import com.se.baitaplonwww.nhom11.model.Admin;
import com.se.baitaplonwww.nhom11.service.AdminService;
import com.se.baitaplonwww.nhom11.serviceImpl.AdminServicesImpl;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/admin")
public class AdminAddController {

	private static final long serialVersionUID = 1L;
	@Autowired
	AdminService adminService = new AdminServicesImpl();

	@GetMapping("/add")
	public String showFormAdd() {
		return "addadmin";
	}

	@PostMapping("/add")
	public void addAdmin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		String admin_username = req.getParameter("admin-username");
		String admin_password = req.getParameter("admin-password");
		String admin_name = req.getParameter("admin-name");
		Admin admin = new Admin();
		admin.setUsername(admin_username);
		admin.setPassword(admin_password);
		admin.setName(admin_name);
		adminService.insert(admin);
		resp.sendRedirect(req.getContextPath() + "/admin/admin/list");
	}
}
