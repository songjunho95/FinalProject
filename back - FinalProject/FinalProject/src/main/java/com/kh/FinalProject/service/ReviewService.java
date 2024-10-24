package com.kh.FinalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.model.vo.SearchDTO;

import mapper.ReviewMapper;


@Service
public class ReviewService {
	
	@Autowired
	private ReviewMapper mapper;
	
	public void create(Review review) {
		mapper.create(review);
	}
	
	public List<Review> allMember() {
		return mapper.allReview();
	}
	
	
	public void update(Review review) {
		mapper.update(review);
	}
	
	public List<Review> search(SearchDTO dto) {
		return mapper.search(dto);
	}
	
	public void delete(List<String> idList) {
		mapper.delete(idList);
	}

}