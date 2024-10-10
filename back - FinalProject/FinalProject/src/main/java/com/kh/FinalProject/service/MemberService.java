package com.kh.FinalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FinalProject.vo.Member;
import com.kh.FinalProject.vo.SearchDTO;

import mapper.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	
	public void register(Member member) {
		mapper.register(member);
	}
	
	public List<Member> allMember() {
		return mapper.allMember();
	}
	
	public Member login(Member member) {
		return mapper.login(member);
	}
	
	public void update(Member member) {
		mapper.update(member);
	}
	
	public List<Member> search(SearchDTO dto) {
		return mapper.search(dto);
	}
	
	public void delete(List<String> idList) {
		mapper.delete(idList);
	}

}
