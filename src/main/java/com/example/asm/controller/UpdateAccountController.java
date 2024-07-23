package com.example.asm.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.asm.entity.User;
import com.example.asm.repository.UserRepository;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class UpdateAccountController {
	@Autowired
	UserRepository userRepository;

	@GetMapping("/user/updateaccount")
	public String showform(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("page", "update.jsp");

		//////////////////// sua thanh ss
		model.addAttribute("user", userRepository.findById("khang").get());

		return "user/layout/index";
	}

	@PostMapping("/user/updateaccount")
	public String update(@Validated @ModelAttribute("user") User user, BindingResult result, Model model,
			@RequestParam(name = "passwordCheck") String passwordCheck, HttpServletResponse response)
			throws IOException {

		if (result.hasErrors()) {
			model.addAttribute("page", "update.jsp");
			model.addAttribute("check", null);
			model.addAttribute("message", "Validation errors occurred.");
			return "user/layout/index";
		}
		
		////////////////////sua thanh ss
		if(user.getUser_id().equals("khang")) {
			
			if (passwordCheck.equals(user.getPassword())) {
				userRepository.save(user);
				model.addAttribute("message", "Update successful!");

			} else {
				model.addAttribute("check", true);
				model.addAttribute("message", "Passwords do not match.");
			}
		}else {
			model.addAttribute("message", "User_id is not your id!");
		}
		

		model.addAttribute("page", "update.jsp");
		return "user/layout/index";
	}

}
