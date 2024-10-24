package com.kh.FinalProject.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Review {
	private int review_code;
	private int review_rating;
	private String review_opinion;
	private String review_img;
	


}


