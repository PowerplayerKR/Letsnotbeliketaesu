package dao;

import java.util.HashMap;
import java.util.List;

public interface INotInterestedDao {
	public int insertNotInterested(HashMap<String,Object> params);
	public int updateNotInterested(HashMap<String,Object> params);
	public int deleteNotInterested(HashMap<String, Object> params);
	public HashMap<String,Object> selectNotInterested(int num);
	public List<HashMap<String, Object>> selectAllNotInterested();
}	
