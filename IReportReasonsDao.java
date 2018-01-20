package dao;

import java.util.HashMap;
import java.util.List;

public interface IReportReasonsDao {
	public int insertReportReasons(HashMap<String,Object> params);
	public int updateReportReasons(HashMap<String,Object> params);
	public int deleteReportReasons(int num);
	public HashMap<String,Object> selectReportReasons(int num);
	public List<HashMap<String, Object>> selectAllReportReasons();
}	
