package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.FinalProject.model.vo.Review;
import com.kh.FinalProject.model.vo.SearchDTO;


@Mapper
public interface ReviewMapper {

	void create(Review review);

	void update(Review review);

	void delete(List<String> reviewidList);
	 
	List<Review> allReview();

	List<Review> search(SearchDTO dto);

}