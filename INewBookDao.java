package dao;

import java.util.HashMap;
import java.util.List;

public interface INewBookDao {
	public int insertNewBook(HashMap<String,Object> params);
	public int updateNewBook(HashMap<String,Object> params);
	public int deleteNewBook(int num);
	public HashMap<String,Object> selectNewBook(int num);
	public List<HashMap<String, Object>> selectAllNewBook();
}	
