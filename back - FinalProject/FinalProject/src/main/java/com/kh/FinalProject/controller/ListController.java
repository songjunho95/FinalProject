package com.kh.FinalProject.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.FinalProject.model.vo.Paging;
import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.service.ReviewService;


@Controller
public class ListController {

	
	private String path = "C:\\Users\\user1\\Desktop\\바나프레소 이미지\\\\";
	
	@Autowired
	private ReviewService service;

	
	public String fileUpload(MultipartFile file) throws IllegalStateException, IOException {
		// 중복 방지를 위한 UUID 적용
		UUID uuid = UUID.randomUUID();
		String fileName = uuid.toString() + "_" + file.getOriginalFilename();

		File copyFile = new File(path + fileName);
		file.transferTo(copyFile); // 업로드한 파일이 지정한 path 위치로 저장
		return fileName;
	}
	

	
	@PostMapping("/upload")
	public String upload(MultipartFile file) throws IllegalStateException, IOException {
		System.out.println("upload!");
		System.out.println("파일 이름 : " + file.getOriginalFilename());
		System.out.println("파일 사이즈 : " + file.getSize());
		System.out.println("파일 파라미터명 : " + file.getName());

		fileUpload(file);

		return "redirect:/";
	}
	
	
	
	
	@PostMapping("/multiUpload")
	public String multiUpload(List<MultipartFile> files) throws IllegalStateException, IOException {

		for (MultipartFile file : files) {
			fileUpload(file);
		}

		return "redirect:/";
	}
	
	@PostMapping("/review")
	public String review(Review vo) throws IllegalStateException, IOException {
		
		// 1. 파일 업로드 처리
		String url = fileUpload(vo.getFile());
		vo.setUrl(url);

		// 2. 해당 파일 URL과 함께 title, content DB에 저장
		service.insert(vo);

		System.out.println(vo);

		return "redirect:/list";
	}
	
	
	
	@GetMapping("/view")
	public String view(int no, Model model) {
		model.addAttribute("review", service.select(no));
		return "view";
	}
	
	
	
	@GetMapping("/list")
	public String list(Model model, Paging paging) {

		List<Review> list = service.selectAll(paging);
		
	
		model.addAttribute("list", list);
		model.addAttribute("paging", new Paging(paging.getPage(), service.total()));

		
		return "list";
	}
	

	@PostMapping("/update")
	public String update(Review vo) throws IllegalStateException, IOException  {
		
		System.out.println(vo);
		
		if (!vo.getFile().isEmpty()) {
			// 파일이 비어있지 않다면 기존 이미지 삭제(delete)
			if(vo.getUrl()!=null) { // 기존 이미지가 null이 아닌 경우
				File file = new File(path + vo.getUrl());
				file.delete();
			}
			
			// 새 이미지 등록
			String url = fileUpload(vo.getFile());
			vo.setUrl(url);
		}
		
		service.update(vo);

		return "redirect:/list";
	}
	

	
	@GetMapping("/delete")
	public String delete(int no) {
		
		service.delete(no);
		return "redirect:/list";
	}
	
}
