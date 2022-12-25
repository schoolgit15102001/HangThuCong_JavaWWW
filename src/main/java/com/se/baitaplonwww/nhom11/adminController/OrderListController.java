package com.se.baitaplonwww.nhom11.adminController;

import com.se.baitaplonwww.nhom11.model.Transactions;
import com.se.baitaplonwww.nhom11.service.TransactionService;
import com.se.baitaplonwww.nhom11.serviceImpl.TransactionServicesImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class OrderListController
 */
@Controller
@RequestMapping("/admin/order")
public class OrderListController {

    private static final long serialVersionUID = 1L;

    @Autowired
    TransactionService transactionService = new TransactionServicesImpl();

    @GetMapping("/list")
    public String listOrders(Model theModel) {
        List<Transactions> transactionList = transactionService.getAll();
        theModel.addAttribute("order", transactionList);
        return "show-order";
    }

}
