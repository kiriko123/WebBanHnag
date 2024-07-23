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

import com.example.asm.entity.User;
import com.example.asm.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	List<User> users;
	
	@GetMapping("/admin/user")
	public String showForm(Model model, @ModelAttribute("user") User user) {
			
		users = userRepository.findAll();
		model.addAttribute("users", users);
		model.addAttribute("sl", userRepository.count());
		model.addAttribute("page", "user.jsp");
		return "admin/layout/index";
	}
	
	@GetMapping("/admin/user/edit/{id}")
	public String edit(@PathVariable("id") String id, Model model) {
		
		User editUser = userRepository.findById(id).get();
		model.addAttribute("user", editUser); 
		
		users = userRepository.findAll();
		model.addAttribute("users", users);
		model.addAttribute("sl", userRepository.count());
		model.addAttribute("page", "user.jsp");
		return "admin/layout/index";
	}
	@PostMapping("/admin/user/create")
	public String create(@Validated@ModelAttribute("user") User user,BindingResult result, Model model) {
		if(result.hasErrors()) {
			users = userRepository.findAll();
			model.addAttribute("users", users);
			model.addAttribute("sl", userRepository.count());
			model.addAttribute("page", "user.jsp");
			model.addAttribute("message", "Validation errors occurred.");
			return "admin/layout/index";
		}
		if(!userRepository.existsById(user.getUser_id())) {
			userRepository.save(user);
			model.addAttribute("message", "Create successful!");
		}else {
			users = userRepository.findAll();
			model.addAttribute("users", users);
			model.addAttribute("sl", userRepository.count());
			model.addAttribute("page", "user.jsp");
			model.addAttribute("message", "User has been existed.");
			return "admin/layout/index";
		}
		
		model.addAttribute("user", new User()); 
		users = userRepository.findAll();
		model.addAttribute("users", users);
		model.addAttribute("sl", userRepository.count());
		model.addAttribute("page", "user.jsp");
		
		return "admin/layout/index";
	}
	@PostMapping("/admin/user/delete")
	public String delete(@ModelAttribute("user") User user, Model model) {
				
		if(userRepository.existsById(user.getUser_id())) {
			userRepository.deleteById(user.getUser_id());
			model.addAttribute("message", "Delete successful!");
		}else {
			users = userRepository.findAll();
			model.addAttribute("users", users);
			model.addAttribute("sl", userRepository.count());
			model.addAttribute("page", "user.jsp");
			model.addAttribute("message", "User has not been existed.");
			return "admin/layout/index";
		}
		
		model.addAttribute("user", new User()); 
		
		users = userRepository.findAll();
		model.addAttribute("users", users);
		model.addAttribute("sl", userRepository.count());
		model.addAttribute("page", "user.jsp");
		return "admin/layout/index";
	}
	
	@PostMapping("/admin/user/update")
	public String update(@Validated@ModelAttribute("user") User user,BindingResult result, Model model) {
		if(result.hasErrors()) {
			users = userRepository.findAll();
			model.addAttribute("users", users);
			model.addAttribute("sl", userRepository.count());
			model.addAttribute("page", "user.jsp");
			model.addAttribute("message", "Validation errors occurred.");
			return "admin/layout/index";
		}
		if(userRepository.existsById(user.getUser_id())) {
			userRepository.save(user);
			model.addAttribute("message", "Update successful!");
		}else {
			users = userRepository.findAll();
			model.addAttribute("users", users);
			model.addAttribute("sl", userRepository.count());
			model.addAttribute("page", "user.jsp");
			model.addAttribute("message", "User has not been existed.");
			return "admin/layout/index";
		}
		
		
		
		
		users = userRepository.findAll();
		model.addAttribute("users", users);
		model.addAttribute("sl", userRepository.count());
		model.addAttribute("page", "user.jsp");
		return "admin/layout/index";
	}
}
