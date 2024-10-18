package com.kh.FinalProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.FinalProject.config.TokenProvider;
import com.kh.FinalProject.model.vo.Member;
import com.kh.FinalProject.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private TokenProvider tokenProvider;
	
	@PostMapping("/register")
	public String register(Member vo) {
		
		service.register(vo);
		
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String login(Member vo) {
		Member member = service.login(vo);
		if(member!=null) {
			// 로그인 성공! -> 세션에 값을 담기 (서버에 고객 정보 임시 저장)
			//            -> 토큰 생성해서 부여 (서버는 토큰 생성만, 가지고 있는 건 클라이언트)
			
			String token = tokenProvider.create(member);
			return "redirect:/";
		}

		return "fail";
	}
	
	/*
	 * HttpSession <-- 여기에 token 담아서 보냄
	 * setAttribute로
	 * 
	 * 
	 * index.jsp에서 해당 token 키 session에 담은 거 받아서
	 * 
	 * 
	 * 
	 * 
	 * localStorage 사용해도 되고, 만약 하게 된다면 localStorage에 값 체크 방식으로 조건 걸어서
	 * 있으면 로그아웃, 없으면 로그인 처리
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * */

	@GetMapping("/logout")
    public String setAttribute(HttpServletRequest request, HttpServletResponse response) {
        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
        return "/logout";
    }

	

}