package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.INotInterestedDao;


@Service
public class NotInterestedService {
	@Autowired
	private INotInterestedDao notInterestedDao;
	
	public List<HashMap<String, Object>> selectAllNotInterested(){
		return notInterestedDao.selectAllNotInterested();
	}
	
	public HashMap<String, Object> selectNotInterested(int num){
		return notInterestedDao.selectNotInterested(num);
	}
	
	public void insertNotInterested(HashMap<String, Object> params) {
		notInterestedDao.insertNotInterested(params);
	}
	public void updateNotInterested(HashMap<String, Object> params) {
		notInterestedDao.updateNotInterested(params);
	}
	public void deleteNotInterested(HashMap<String, Object> params) {
		notInterestedDao.deleteNotInterested(params);
	}
}
