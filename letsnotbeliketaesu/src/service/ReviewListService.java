package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReviewListDao;


@Service
public class ReviewListService {
	@Autowired
	private IReviewListDao reviewListDao;
	
	public List<HashMap<String, Object>> selectAllReviewList(){
		return reviewListDao.selectAllReviewList();
	}
	
	public List<HashMap<String, Object>> selectReviewList(String isbn){
		return reviewListDao.selectReviewList(isbn);
	}
	
	public List<HashMap<String, Object>> selectReviewListMore(HashMap<String,Object> params){
		return reviewListDao.selectReviewListMore(params);
	}
	
	public HashMap<String, Object> selectReviewList(int num){
		return reviewListDao.selectReviewList(num);
	}
	
	public void insertReviewList(HashMap<String, Object> params) {
		reviewListDao.insertReviewList(params);
	}
	public void updateReviewList(HashMap<String, Object> params) {
		reviewListDao.updateReviewList(params);
	}
	public void deleteReviewList(int num) {
		reviewListDao.deleteReviewList(num);
	}
}
