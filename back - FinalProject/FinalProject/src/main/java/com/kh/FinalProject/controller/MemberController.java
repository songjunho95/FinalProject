package com.kh.FinalProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.FinalProject.service.MemberService;
import com.kh.FinalProject.vo.Member;
import com.kh.FinalProject.vo.SearchDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("allMember", service.allMember());
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return "mypage/login";
	}
	
	@PostMapping("/login")
	public String login(Member vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("vo", service.login(vo));
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("vo");
		if(member!=null) session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/update")
	public String update(Member vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("vo");
		
		if(vo.getId()==null) vo.setId(member.getId());
		System.out.println(vo);
		service.update(vo);
		
		if(vo.getName()==null) vo.setName(member.getName());
		session.setAttribute("vo", vo);

		return "redirect:/";
	}
	
	@GetMapping("/search")
	public String search(SearchDTO dto, Model model) {
		model.addAttribute("search", service.search(dto));
		return "index";
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam(name="idList", required=false) List<String> idList) {
		if(idList!=null) service.delete(idList);
		return "redirect:/";
	}

}