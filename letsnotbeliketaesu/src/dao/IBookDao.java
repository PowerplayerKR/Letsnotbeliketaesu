package dao;

import java.util.HashMap;
import java.util.List;

public interface IBookDao {
	public int insertBook(HashMap<String,Object> params);
	public int updateBook(HashMap<String,Object> params);
	public int deleteBook(int num);
	public HashMap<String,Object> selectBook(String title);
	public List<HashMap<String, Object>>  bookSearch(HashMap<String,Object> params);
	public List<HashMap<String, Object>>  bookSearchCategory(HashMap<String,Object> params);
	public List<HashMap<String, Object>> selectAllBook();
	
	public List<HashMap<String, Object>> selectUserBook(HashMap<String, Object> params);
}	
