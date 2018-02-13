package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IUserDao;


@Service
public class UserService {
	@Autowired
	private IUserDao userDao;
	
	public List<HashMap<String, Object>> selectAllUser(){
		return userDao.selectAllUser();
	}
	
	public HashMap<String, Object> selectUser(HashMap<String, Object> params){
		return userDao.selectUser(params);
	}
	
	public void insertUser(HashMap<String, Object> params) {
		userDao.insertUser(params);
	}
	public void updateUser(HashMap<String, Object> params) {
		userDao.updateUser(params);
	}
	public int deleteUser(HashMap<String, Object> params) {
		return userDao.deleteUser(params);
	}
}
