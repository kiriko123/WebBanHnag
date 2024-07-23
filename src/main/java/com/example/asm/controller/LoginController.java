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
import com.example.asm.service.CookieService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
	@Autowired
	UserRepository userRepository;

	@Autowired
	CookieService cookieService;

	@GetMapping("/user/login")
	public String showForm(Model model, @ModelAttribute("user") User user) {
		String value = cookieService.getValue("user", true);
		if (value != null) {
			String[] vals = value.split(",");
			model.addAttribute("user_id", vals[0]);
			model.addAttribute("password", vals[1]);
		}
		model.addAttribute("page", "login.jsp");
		return "user/layout/index";
	}

	@PostMapping("/user/login")
	public String login(@Validated @ModelAttribute("user") User user, BindingResult result, Model model,
			@RequestParam(name = "remember", required = false, defaultValue = "false") Boolean remember,
			HttpServletResponse response) throws IOException {

		if (userRepository.existsById(user.getUser_id())) {
			if (userRepository.findById(user.getUser_id()).get().getPassword().equals(user.getPassword())) {
				if (remember != null && remember) {
					cookieService.add("user", user.getUser_id() + "," + user.getPassword(), 3 * 24 * 60 * 60, true);
				} else {
					cookieService.remove("user");
				}
				///////////////////////////////////////////
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().write("<script>alert('Login successful!'); window.location.href = '"
						+ response.encodeRedirectURL("/hello/home") + "';</script>");
				return null;

			} else {
				model.addAttribute("message", "Invalid username or password.");

			}
		} else {
			model.addAttribute("message", "Invalid username or password.");
		}
		model.addAttribute("page", "login.jsp");
		return "user/layout/index";
	}
}
