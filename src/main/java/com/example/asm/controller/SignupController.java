package com.example.asm.controller;

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

import java.io.IOException;

@Controller
public class SignupController {
    @Autowired
    UserRepository userRepository;
    @Autowired
    CookieService cookieService;
    @GetMapping("/user/signup")
    public String showForm(Model model, @ModelAttribute("user") User user) {
        model.addAttribute("page", "signup.jsp");
        return "user/layout/index";
    }

    @PostMapping("/user/signup")
    public String signup(@Validated @ModelAttribute("user") User user, BindingResult result, Model model, @RequestParam(name = "passwordCheck") String passwordCheck, HttpServletResponse response) throws IOException {
        
        if (result.hasErrors()) {
            model.addAttribute("page", "signup.jsp");
            model.addAttribute("check", null);
            model.addAttribute("message", "Validation errors occurred.");
            return "user/layout/index";
        }

        if (!userRepository.existsById(user.getUser_id())) {
            if (passwordCheck.equals(user.getPassword())) {
                userRepository.save(user);
                cookieService.add("user",user.getUser_id()+","+user.getPassword(), 3 * 24 * 60 * 60, true);
                response.setContentType("text/html; charset=UTF-8");
                response.getWriter().write("<script>alert('Registration successful!'); window.location.href = '" + response.encodeRedirectURL("/user/login") + "';</script>");
                return null;
            } else {
                model.addAttribute("check", true);
                model.addAttribute("message", "Passwords do not match.");
            }
        } else {
            model.addAttribute("message", "User already exists.");
        }

        model.addAttribute("page", "signup.jsp");
        return "user/layout/index";
    }
}
