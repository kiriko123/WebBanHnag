package com.example.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.asm.repository.UserRepository;

@Controller
public class ForgotController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/user/forgot")
	public String showform(Model model) {
		model.addAttribute("page", "forgot.jsp");
		return "user/layout/index";
	}
	@PostMapping("/user/forgot")
	public String forgot(@RequestParam(name = "user_id") String user_id, @RequestParam(name = "email") String email, Model model) {
		
		if(userRepository.existsById(user_id)) {
			if(userRepository.findById(user_id).get().getEmail().equals(email)) {
				//gửi mail
				
				model.addAttribute("message", "Send password successful!");
			}else {
				model.addAttribute("message", "Invalid username or email.");
			}
		}else {
			model.addAttribute("message", "Invalid username or email.");
		}
		
		model.addAttribute("page", "forgot.jsp");
		return "user/layout/index";
	}
	
}
