package dao;

import java.util.HashMap;
import java.util.List;

public interface ICategorysDao {
	public int insertCategorys(HashMap<String,Object> params);
	public int updateCategorys(HashMap<String,Object> params);
	public int deleteCategorys(int num);
	public HashMap<String,Object> selectCategorys(int num);
	public List<HashMap<String, Object>> selectAllCategorys();
}	
