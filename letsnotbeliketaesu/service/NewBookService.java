package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.INewBookDao;

@Service
public class NewBookService {
	@Autowired
	private INewBookDao newBookDao;
	
	public List<HashMap<String, Object>> selectAllNewBook(){
		return newBookDao.selectAllNewBook();
	}
	
	public HashMap<String, Object> selectNewBook(int num){
		return newBookDao.selectNewBook(num);
	}
	
	public void insertNewBook(HashMap<String, Object> params) {
		newBookDao.insertNewBook(params);
	}
	public void updateNewBook(HashMap<String, Object> params) {
		newBookDao.updateNewBook(params);
	}
	public void deleteNewBook(int num) {
		newBookDao.deleteNewBook(num);
	}
}
