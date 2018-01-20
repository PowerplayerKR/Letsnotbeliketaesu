package dao;

import java.util.HashMap;
import java.util.List;

public interface IBestBookDao {
	public int insertBestBook(HashMap<String,Object> params);
	public int updateBestBook(HashMap<String,Object> params);
	public int deleteBestBook(int num);
	public HashMap<String,Object> selectBestBook(int num);
	public List<HashMap<String, Object>> selectAllBestBook();
}	
