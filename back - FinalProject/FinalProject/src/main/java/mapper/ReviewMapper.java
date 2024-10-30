package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.FinalProject.model.vo.Paging;
import com.kh.FinalProject.model.vo.Review;

@Mapper
public interface ReviewMapper {

	void insert (Review vo);
	List<Review> selectAll(Paging paging);
	Review select(int no);
	void update(Review vo);
	void delete(int no);
	int total();

}