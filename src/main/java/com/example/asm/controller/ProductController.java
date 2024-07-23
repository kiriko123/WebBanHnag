package com.example.asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.asm.entity.Product;
import com.example.asm.repository.CategoryRepository;
import com.example.asm.repository.ProductRepository;
import com.example.asm.service.UploadService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductController {
	@Autowired
	ProductRepository productRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	UploadService uploadService;

	List<Product> products;

	@GetMapping("/admin/product")
	public String showForm(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);
		model.addAttribute("sl", productRepository.count());
		model.addAttribute("page", "sanpham.jsp");
		return "admin/layout/index";
	}

	@GetMapping("/admin/product/edit/{id}")
	public String edit(@PathVariable("id") String id, Model model) {
		Product editProduct = productRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid product ID"));

		model.addAttribute("product", editProduct);
		model.addAttribute("categories", categoryRepository.findAll());
		products = productRepository.findAll();
		model.addAttribute("products", products);
		model.addAttribute("sl", productRepository.count());
		model.addAttribute("page", "sanpham.jsp");
		return "admin/layout/index";
	}

	@PostMapping("/admin/product/create")
	public String create(@Validated @ModelAttribute("product") Product product, BindingResult result, Model model,
			@RequestParam("category_id") String category_id, @RequestParam("photo") MultipartFile file,
			@RequestParam("poster") String poster) {

		if (result.hasErrors()) {
			model.addAttribute("message", "Validation errors occurred.");
			model.addAttribute("categories", categoryRepository.findAll());
			products = productRepository.findAll();
			model.addAttribute("products", products);
			model.addAttribute("sl", productRepository.count());
			model.addAttribute("page", "sanpham.jsp");
			return "admin/layout/index";
		}
		
		if(productRepository.existsById(product.getProduct_id())) {
			model.addAttribute("message", "Product has been existed.");
			model.addAttribute("categories", categoryRepository.findAll());
			products = productRepository.findAll();
			model.addAttribute("products", products);
			model.addAttribute("sl", productRepository.count());
			model.addAttribute("page", "sanpham.jsp");
			return "admin/layout/index";
		}
		
		product.setCategory(categoryRepository.findById(category_id).get());

		if (!file.isEmpty()) {
			if (!file.getOriginalFilename().endsWith(".png")) {
				model.addAttribute("message", "File must be .png file.");
				model.addAttribute("categories", categoryRepository.findAll());
				products = productRepository.findAll();
				model.addAttribute("products", products);
				model.addAttribute("sl", productRepository.count());
				model.addAttribute("page", "sanpham.jsp");
				return "admin/layout/index";
			} else {
				uploadService.save(file, "img");
				product.setProduct_image(file.getOriginalFilename());
			}

		}

		productRepository.save(product);
		model.addAttribute("message", "Create successful!");

		model.addAttribute("categories", categoryRepository.findAll());
		products = productRepository.findAll();
		model.addAttribute("products", products);
		model.addAttribute("sl", productRepository.count());
		model.addAttribute("page", "sanpham.jsp");
		return "admin/layout/index";
	}

	@PostMapping("/admin/product/delete")
	public String delete(@ModelAttribute("product") Product product, Model model,
			@RequestParam("category_id") String category_id) {
		
		if(!productRepository.existsById(product.getProduct_id())) {
			model.addAttribute("message", "Product has not been existed.");
			model.addAttribute("categories", categoryRepository.findAll());
			products = productRepository.findAll();
			model.addAttribute("products", products);
			model.addAttribute("sl", productRepository.count());
			model.addAttribute("page", "sanpham.jsp");
			return "admin/layout/index";
		}
		
		productRepository.deleteById(product.getProduct_id());
		model.addAttribute("message", "Delete successful!");

		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("products", productRepository.findAll());
		model.addAttribute("sl", productRepository.count());
		model.addAttribute("page", "sanpham.jsp");
		return "admin/layout/index";
	}

	@PostMapping("/admin/product/update")
	public String update(@Validated @ModelAttribute("product") Product product, BindingResult result, Model model,
			@RequestParam("category_id") String category_id, @RequestParam("photo") MultipartFile file,
			@RequestParam("poster") String poster) {

		if (result.hasErrors()) {
			model.addAttribute("message", "Validation errors occurred.");
			model.addAttribute("categories", categoryRepository.findAll());
			products = productRepository.findAll();
			model.addAttribute("products", products);
			model.addAttribute("sl", productRepository.count());
			model.addAttribute("page", "sanpham.jsp");
			return "admin/layout/index";
		}
		
		if(!productRepository.existsById(product.getProduct_id())) {
			model.addAttribute("message", "Product has not been existed.");
			model.addAttribute("categories", categoryRepository.findAll());
			products = productRepository.findAll();
			model.addAttribute("products", products);
			model.addAttribute("sl", productRepository.count());
			model.addAttribute("page", "sanpham.jsp");
			return "admin/layout/index";
		}

		product.setCategory(categoryRepository.findById(category_id).get());

		if (!file.isEmpty()) {
			if (!file.getOriginalFilename().endsWith(".png")) {
				model.addAttribute("message", "File must be .png file.");
				model.addAttribute("categories", categoryRepository.findAll());
				products = productRepository.findAll();
				model.addAttribute("products", products);
				model.addAttribute("sl", productRepository.count());
				model.addAttribute("page", "sanpham.jsp");
				return "admin/layout/index";
			} else {
				uploadService.save(file, "img");
				product.setProduct_image(file.getOriginalFilename());
			}

		}else {
			product.setProduct_image(poster);
		}
		
		productRepository.save(product);
		model.addAttribute("message", "Update successful!");
		
		

		
		model.addAttribute("categories", categoryRepository.findAll());
		products = productRepository.findAll();
		model.addAttribute("products", products);
		model.addAttribute("sl", productRepository.count());
		model.addAttribute("page", "sanpham.jsp");
		return "admin/layout/index";
	}

}
