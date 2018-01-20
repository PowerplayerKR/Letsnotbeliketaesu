package dao;

import java.util.HashMap;
import java.util.List;

public interface IUserDao {
	public int insertUser(HashMap<String,Object> params);
	public int updateUser(HashMap<String,Object> params);
	public int deleteUser(HashMap<String,Object> params);
	public HashMap<String,Object> selectUser(HashMap<String,Object> params);
	public List<HashMap<String, Object>> selectAllUser();
}	
