package mapper;


import org.apache.ibatis.annotations.Mapper;

import com.kh.FinalProject.model.vo.Member;



@Mapper
public interface MemberMapper {
	
	Member check(String id );
	void signup(Member vo);
}