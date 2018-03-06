package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IFavoritesDao;


@Service
public class FavoritesService {
	@Autowired
	private IFavoritesDao favoritesDao;
	
	public List<HashMap<String, Object>> selectAllFavorites(){
		return favoritesDao.selectAllFavorites();
	}
	
	public HashMap<String, Object> selectFavorites(int num){
		return favoritesDao.selectFavorites(num);
	}
	
	public void insertFavorites(HashMap<String, Object> params) {
		favoritesDao.insertFavorites(params);
	}
	public void updateFavorites(HashMap<String, Object> params) {
		favoritesDao.updateFavorites(params);
	}
	public void deleteFavorites(HashMap<String, Object> params) {
		favoritesDao.deleteFavorites(params);
	}
}
