package com.se.baitaplonwww.nhom11.adminController;

import com.se.baitaplonwww.nhom11.model.User;
import com.se.baitaplonwww.nhom11.service.UserService;
import com.se.baitaplonwww.nhom11.serviceImpl.UserServicesImpl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/user")
public class UserListController {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    @Autowired
    UserService userService = new UserServicesImpl();

    @GetMapping("/list")
    public String listUsers(Model theModel) {
        List<User> users = userService.getAll();
        theModel.addAttribute("userList", users);
        return "user";
    }
}
