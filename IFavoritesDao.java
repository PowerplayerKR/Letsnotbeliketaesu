package dao;

import java.util.HashMap;
import java.util.List;

public interface IFavoritesDao {
	public int insertFavorites(HashMap<String,Object> params);
	public int updateFavorites(HashMap<String,Object> params);
	public int deleteFavorites(int num);
	public HashMap<String,Object> selectFavorites(int num);
	public List<HashMap<String, Object>> selectAllFavorites();
}	
