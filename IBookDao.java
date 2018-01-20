package dao;

import java.util.HashMap;
import java.util.List;

public interface IBookDao {
	public int insertBook(HashMap<String,Object> params);
	public int updateBook(HashMap<String,Object> params);
	public int deleteBook(int num);
	public HashMap<String,Object> selectBook(int num);
	public HashMap<String,Object> bookSearch(HashMap<String,Object> params);
	public HashMap<String,Object> bookSearchCategory(HashMap<String,Object> params);
	public List<HashMap<String, Object>> selectAllBook();
}	
