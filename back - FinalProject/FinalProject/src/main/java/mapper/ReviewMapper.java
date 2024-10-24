package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.model.vo.SearchDTO;


@Mapper
public interface ReviewMapper {

	void create(Review review);
	List<Review> allReview();

	void update(Review review);
	List<Review> search(SearchDTO dto);
	
	void delete(List<String> idList);
	 
}
