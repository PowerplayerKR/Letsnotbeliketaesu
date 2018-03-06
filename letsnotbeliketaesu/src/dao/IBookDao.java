package dao;

import java.util.HashMap;
import java.util.List;

public interface IBookDao {
	public int insertBook(HashMap<String, Object> params);

	public int updateBook(HashMap<String, Object> params);

	public int deleteBook(int num);

	public HashMap<String, Object> selectBook(String title);

	public List<HashMap<String, Object>> bookSearch(HashMap<String, Object> params);
	
	public List<HashMap<String, Object>>  bookSearchMore(HashMap<String,Object> params);

	public List<HashMap<String, Object>> bookSearchCategory(HashMap<String, Object> params);

	public List<HashMap<String, Object>> selectAllBook();

	public List<HashMap<String, Object>> selectUserBook(HashMap<String, Object> params);

	public List<HashMap<String, Object>> selectBookMain();

	public List<HashMap<String, Object>> bookAutocomplete(HashMap<String, Object> params);
	
		//최송은  내가만들어논 dao
	public int insertReviewList(HashMap<String,Object> params);
	public int updateReviewList(HashMap<String,Object> params);
	public int deleteReviewList(HashMap<String, Object>params);
	public int starAvgCount(HashMap<String, Object> params);
	public int starAvgDelete(HashMap<String, Object> params);
	public int starAvgUpdate(HashMap<String, Object> params);
	public List<HashMap<String, Object>>recommended(String email);
	
}
