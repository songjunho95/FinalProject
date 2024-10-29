package com.kh.FinalProject.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.FinalProject.model.vo.Member;
import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class PageController {
	

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/signup")
	public String register() {
		return "signup";
	}
	
	
	
	@GetMapping("/login")
	public String toLoginPAGE(HttpSession session) {
		Long id = (Long) session.getAttribute("userId");
		if(id != null) {
			return "redirect:/";
		}
		return "login";
	}
	
	
	@GetMapping("/review")
	public String review() {
		return "review";
	}
	
	@GetMapping("/reviewlist")
	public String reviewlist() {
		return "reviewlist";
	}
	
}


	
	

