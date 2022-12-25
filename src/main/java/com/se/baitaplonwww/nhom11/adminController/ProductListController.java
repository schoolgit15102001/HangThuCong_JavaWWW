package com.se.baitaplonwww.nhom11.adminController;

import com.se.baitaplonwww.nhom11.model.Product;
import com.se.baitaplonwww.nhom11.service.ProductService;
import com.se.baitaplonwww.nhom11.serviceImpl.ProductServiceImpl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class ProductListController
 */
@Controller
@RequestMapping("/admin/product")
public class ProductListController {

    private static final long serialVersionUID = 1L;

    @Autowired
    ProductService productService = new ProductServiceImpl();

    @GetMapping("/list")
    public String listProduct(Model theModel) {
        List<Product> productList = productService.getAll();
        theModel.addAttribute("productlist", productList);
        return "show-products";
    }
}
