package com.example.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class Hello {
	@GetMapping("/hello/{p}")
	public String hello(@PathVariable("p") String p,Model model) {
		
		
		
		
		
		
		if(p.equals("cart")) {
			model.addAttribute("page", "cart.jsp");
		}
		else if(p.equals("bill")) {
			model.addAttribute("page", "bill.jsp");
		}
		
		
		
		
		else if(p.equals("donhang")) {
			model.addAttribute("page", "donhang.jsp");
			return "admin/layout/index";
		}
		else if(p.equals("thongke")) {
			model.addAttribute("page", "thongke.jsp");
			return "admin/layout/index";
		}
		else if(p.equals("chitietdonhang")) {
			model.addAttribute("page", "chitietdonhang.jsp");
			return "admin/layout/index";
		}
		else {
			model.addAttribute("page", "home.jsp");
		}
		
		return "user/layout/index";
	}
	
}
