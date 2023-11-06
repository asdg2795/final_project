package com.multi.myapp;

import java.util.Date; 

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("data", new Date());
		return "index";
	}
}