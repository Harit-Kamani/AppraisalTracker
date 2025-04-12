package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("home")
	public String home() {
		return"Home";
	}
	
	@GetMapping("homesidebar")
	public String homeSidebar() {
		return"HomeSidebar";
	}
}
