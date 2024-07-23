package com.example.asm.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.asm.entity.Category;
import com.example.asm.repository.CategoryRepository;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class CategoryController {
	@Autowired
	CategoryRepository categoryRepository;

	List<Category> categories;

	@GetMapping("/admin/category")
	public String showCategoryForm(@ModelAttribute("category") Category category, Model model) {
		categories = categoryRepository.findAll();
		long count = categoryRepository.count();
		model.addAttribute("categories", categories);
		model.addAttribute("count", count);
		model.addAttribute("page", "loaihang.jsp");
		return "admin/layout/index";
	}

	@GetMapping("/admin/category/edit/{category_id}")
	public String edit(@PathVariable("category_id") String category_id, Model model) {
		Category category = categoryRepository.findById(category_id).get();
		model.addAttribute("category", category);
		categories = categoryRepository.findAll();
		long count = categoryRepository.count();
		model.addAttribute("categories", categories);
		model.addAttribute("count", count);
		model.addAttribute("page", "loaihang.jsp");
		return "admin/layout/index";
	}

	@PostMapping("/admin/category/create")
	public String create(@Validated @ModelAttribute("category") Category category, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("message", "Validation errors occurred.");
			model.addAttribute("page", "loaihang.jsp");
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			return "admin/layout/index";
		}
		if (categoryRepository.existsById(category.getCategory_id())) {
			model.addAttribute("message", "Category has been existed.");
			model.addAttribute("page", "loaihang.jsp");
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			return "admin/layout/index";
		}
		categoryRepository.save(category);
		model.addAttribute("category", new Category());
		categories = categoryRepository.findAll();
		long count = categoryRepository.count();
		model.addAttribute("categories", categories);
		model.addAttribute("count", count);
		model.addAttribute("page", "loaihang.jsp");
		model.addAttribute("message", "Create successful!");
		return "admin/layout/index";
	}

	@PostMapping("/admin/category/delete")
	public String delete(@ModelAttribute("category") Category category, Model model) {
		if (categoryRepository.existsById(category.getCategory_id())) {

			categoryRepository.deleteById(category.getCategory_id());

			model.addAttribute("message", "Delete successful!");
			model.addAttribute("category", new Category());
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			model.addAttribute("page", "loaihang.jsp");
			return "admin/layout/index";
		}

		model.addAttribute("message", "Category does not exist");

		categories = categoryRepository.findAll();
		long count = categoryRepository.count();
		model.addAttribute("categories", categories);
		model.addAttribute("count", count);
		model.addAttribute("page", "loaihang.jsp");
		return "admin/layout/index";
	}

	@PostMapping("/admin/category/update")
	public String update(@Validated @ModelAttribute("category") Category category, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("message", "Validation errors occurred.");
			model.addAttribute("page", "loaihang.jsp");
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			return "admin/layout/index";
		}

		if (!categoryRepository.existsById(category.getCategory_id())) {
			model.addAttribute("message", "Category has not been existed.");
			model.addAttribute("page", "loaihang.jsp");
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			return "admin/layout/index";
		}

		if (categoryRepository.existsById(category.getCategory_id())) {

			categoryRepository.save(category);

			model.addAttribute("message", "Update successful!");
			categories = categoryRepository.findAll();
			long count = categoryRepository.count();
			model.addAttribute("categories", categories);
			model.addAttribute("count", count);
			model.addAttribute("page", "loaihang.jsp");
			return "admin/layout/index";
		}

		model.addAttribute("message", "Category does not exist");

		categories = categoryRepository.findAll();
		long count = categoryRepository.count();
		model.addAttribute("categories", categories);
		model.addAttribute("count", count);
		model.addAttribute("page", "loaihang.jsp");
		return "admin/layout/index";
	}

}
