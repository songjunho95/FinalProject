package com.kh.FinalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FinalProject.model.vo.Paging;
import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.model.vo.SearchDTO;

import mapper.ReviewMapper;


@Service
public class ReviewService {
	
	@Autowired
	private ReviewMapper mapper;
	
	public void insert(Review review) {
		mapper.insert(review);
	}
	
	public List<Review> selectAll(Paging paging) {
		
		paging.setOffset(paging.getLimit() * (paging.getPage() - 1));
		
		return mapper.selectAll(paging);
	}
	
	public int total() {
		return mapper.total();
	}
	
	
	public Review select(int no) {
		return mapper.select(no);
	}
	
	public void update(Review vo) {
		mapper.update(vo);
	}
	
	public void delete(int no) {
		mapper.delete(no);
	}


}