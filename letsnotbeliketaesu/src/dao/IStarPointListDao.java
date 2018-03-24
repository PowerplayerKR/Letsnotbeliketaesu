package dao;

import java.util.HashMap;
import java.util.List;

public interface IStarPointListDao {
	public int starInsert(HashMap<String, Object> params);

	public int starDelete(HashMap<String, Object> params);

	public int starUpdate(HashMap<String, Object> params);
	
	public HashMap<String, Object> starSelectOne(HashMap<String, Object>params);
}
