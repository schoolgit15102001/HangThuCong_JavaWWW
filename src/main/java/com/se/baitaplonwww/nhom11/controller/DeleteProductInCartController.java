package com.se.baitaplonwww.nhom11.controller;

import com.se.baitaplonwww.nhom11.model.Item;
import com.se.baitaplonwww.nhom11.model.Order;
import com.se.baitaplonwww.nhom11.model.Product;
import com.se.baitaplonwww.nhom11.service.ProductService;
import com.se.baitaplonwww.nhom11.serviceImpl.ProductServiceImpl;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/view/client")
public class DeleteProductInCartController{
	private static final long serialVersionUID = 1L;
        @Autowired
	ProductService productservice = new ProductServiceImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	DecimalFormat df1 = new DecimalFormat("#.0");
	
	@GetMapping("/cart-delete")
	public String DeleteProductInCart(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		HttpSession session = req.getSession(true);
		Product product = productservice.get(Integer.parseInt(id));
		Order order = (Order) session.getAttribute("order");
		List<Item> listItems = order.getItems();
		for(Item item: listItems)
		{
			if(item.getProduct().getId() == product.getId())
			{
				order.setSumPrice(order.getSumPrice() - item.getPrice());
				listItems.remove(item);
				break;
			}
		}
		order.setItems(listItems);
                if(order.getSumPrice() == 0)
		{
			session.setAttribute("sumprice", "0");
		} else {
			session.setAttribute("sumprice", df.format(order.getSumPrice()));
		}
		session.setAttribute("order", order);
//		resp.sendRedirect(req.getContextPath() + "/view/client/cart");
                return "redirect:/view/client/cart";	
	}
}
