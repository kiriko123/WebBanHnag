package com.example.asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.asm.entity.Category;
import com.example.asm.entity.Product;
import com.example.asm.repository.CategoryRepository;
import com.example.asm.repository.ProductRepository;




@Controller
public class HomeController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	CategoryRepository categoryRepository;
	List<Category> categories;
	List<Product> products;
	@GetMapping("/user/home")
	public String showHome(Model model) {
		
		categories = categoryRepository.findAll();
		products = productRepository.findAll();
		model.addAttribute("products", products);
		model.addAttribute("categories", categories);
		model.addAttribute("page", "home.jsp");
		return "user/layout/index";
	}
	
	@GetMapping("/detail/{product_id}")
	public String showDetail(@PathVariable("product_id") String product_id, Model model) {
		Product product = productRepository.findById(product_id).get();
		model.addAttribute("product", product);
		model.addAttribute("page", "chitiet.jsp");
		return "user/layout/index";
	}
	@GetMapping("/user/home/{category_id}")
	public String getMethodName(@PathVariable("category_id") String category_id, Model model) {
		
		products = productRepository.findByCategory(categoryRepository.findById(category_id).get());
		model.addAttribute("products", products);
		model.addAttribute("categories", categories);
		model.addAttribute("page", "home.jsp");
		return "user/layout/index";
	}
	
	
}
