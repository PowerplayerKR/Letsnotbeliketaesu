package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IBestBookDao;

@Service
public class BestBookService {
	@Autowired
	private IBestBookDao bestBookDao;

	public List<HashMap<String, Object>> selectAllBestBook(HashMap<String, Object> params) {
		return bestBookDao.selectAllBestBook(params);
	}

	public List<HashMap<String, Object>> selectRankingBestBook(HashMap<String, Object> params) {
		return bestBookDao.selectRankingBestBook(params);
	}
	
	public List<HashMap<String, Object>> selectBestBookMore(HashMap<String, Object> params){
		return bestBookDao.selectBestBookMore(params);
	}

	public HashMap<String, Object> selectBestBook(int num) {
		return bestBookDao.selectBestBook(num);
	}

	public void insertBestBook(HashMap<String, Object> params) {
		bestBookDao.insertBestBook(params);
	}

	public void updateBestBook(HashMap<String, Object> params) {
		bestBookDao.updateBestBook(params);
	}

	public void deleteBestBook(int num) {
		bestBookDao.deleteBestBook(num);
	}

	public List<HashMap<String, Object>> selectBookMain(HashMap<String, Object> params) {
		return bestBookDao.selectBookMain(params);
	}
}
