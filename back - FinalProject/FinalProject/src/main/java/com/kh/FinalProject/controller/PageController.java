package com.kh.FinalProject.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.FinalProject.model.vo.Member;

@Controller
public class PageController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/review")
	public String review() {
		return "review";
	}
	

}

