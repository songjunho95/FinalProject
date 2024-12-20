package com.kh.FinalProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.FinalProject.model.vo.Member;
import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.service.MemberService;
import com.kh.FinalProject.service.ReviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	private MemberService member;
	
	
	
	// 중복체크
	@ResponseBody
	@PostMapping("/check")
	public boolean check(String id) {
		return member.check(id);
	}
	
	// 회원가입
	@PostMapping("/signup")
	public String signup(Member vo) {
		member.signup(vo);
		return "redirect:/";
	}
}

