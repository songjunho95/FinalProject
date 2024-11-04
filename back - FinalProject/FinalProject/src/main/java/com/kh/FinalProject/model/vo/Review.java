package com.kh.FinalProject.model.vo;

import java.time.LocalDateTime;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Review {
	
	private String review_title;
	private int review_code;
	private int review_rating;
	private String review_opinion;
	private String review_img;
	
	private int no;
	
	
	private String url;
	private MultipartFile file;
	
	
}


