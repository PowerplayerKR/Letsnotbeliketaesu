package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IStarPointListDao;


@Service
public class StarPointListService {
	@Autowired
	private IStarPointListDao starPointListDao;
	
	public List<HashMap<String, Object>> selectAllStarPointList(){
		return starPointListDao.selectAllStarPointList();
	}
	
	public HashMap<String, Object> selectStarPointList(int num){
		return starPointListDao.selectStarPointList(num);
	}
	
	public void insertStarPointList(HashMap<String, Object> params) {
		starPointListDao.insertStarPointList(params);
	}
	public void updateStarPointList(HashMap<String, Object> params) {
		starPointListDao.updateStarPointList(params);
	}
	public void deleteStarPointList(int num) {
		starPointListDao.deleteStarPointList(num);
	}
	public List<HashMap<String, Object> >selectUserStar(HashMap<String, Object> params){
		return starPointListDao.selectUserStar(params);
	}
}
