package dao;

import java.util.HashMap;
import java.util.List;

public interface IReviewListDao {
	public int insertReviewList(HashMap<String,Object> params);
	public int updateReviewList(HashMap<String,Object> params);
	public int deleteReviewList(int num);
	public HashMap<String,Object> selectReviewList(int num);
	public List<HashMap<String, Object>> selectAllReviewList();
	public int selectCountReviewList(String isbn);
	public List<HashMap<String, Object>> selectReviewList(String isbn);
	public List<HashMap<String, Object>> selectReviewListMore(HashMap<String, Object> params);
}	
