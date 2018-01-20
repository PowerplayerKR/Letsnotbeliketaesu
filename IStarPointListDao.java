package dao;

import java.util.HashMap;
import java.util.List;

public interface IStarPointListDao {
	public int insertStarPointList(HashMap<String,Object> params);
	public int updateStarPointList(HashMap<String,Object> params);
	public int deleteStarPointList(int num);
	public HashMap<String,Object> selectStarPointList(int num);
	public List<HashMap<String, Object>> selectAllStarPointList();
}	
