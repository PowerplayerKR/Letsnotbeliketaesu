package dao;

import java.util.HashMap;
import java.util.List;

public interface IReportListDao {
	public int insertReportList(HashMap<String,Object> params);
	public int updateReportList(HashMap<String,Object> params);
	public int deleteReportList(int num);
	public HashMap<String,Object> selectReportList(int num);
	public List<HashMap<String, Object>> selectAllReportList();
}	
