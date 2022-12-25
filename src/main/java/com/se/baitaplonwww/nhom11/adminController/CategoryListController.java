package com.se.baitaplonwww.nhom11.adminController;

import com.se.baitaplonwww.nhom11.model.Catalog;
import com.se.baitaplonwww.nhom11.service.CategoryService;
import com.se.baitaplonwww.nhom11.serviceImpl.CategoryServicesImpl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class CategoryListController
 */
@Controller
@RequestMapping("/admin/cate")
public class CategoryListController {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    @Autowired
    CategoryService cateService = new CategoryServicesImpl();

    @GetMapping("/list")
    public String listCategory(Model theModel) {
        List<Catalog> cateList = cateService.getAll();
        theModel.addAttribute("catelist", cateList);
        return "show-cate";
    }

}
