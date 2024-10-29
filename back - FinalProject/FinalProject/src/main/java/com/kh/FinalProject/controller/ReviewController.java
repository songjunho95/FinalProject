package com.kh.FinalProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.kh.FinalProject.model.vo.Review;

import com.kh.FinalProject.service.ReviewService;



@Controller
public class ReviewController<Paging> {

	
	@Autowired
	private ReviewService review;
	
	

	@PostMapping("/review")
	public String update(Review vo) {
		review.update(vo);
		return "redirect:/";
	}

	
	
}






