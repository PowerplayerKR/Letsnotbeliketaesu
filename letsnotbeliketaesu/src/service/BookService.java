package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IBookDao;

@Service
public class BookService {
	@Autowired
	private IBookDao bookDao;

	public List<HashMap<String, Object>> selectAllBook() {
		return bookDao.selectAllBook();
	}

	public HashMap<String, Object> selectBook(String title) {
		return bookDao.selectBook(title);
	}

	public void insertBook(HashMap<String, Object> params) {
		bookDao.insertBook(params);
	}

	public void updateBook(HashMap<String, Object> params) {
		bookDao.updateBook(params);
	}

	public void deleteBook(int num) {
		bookDao.deleteBook(num);
	}

	public List<HashMap<String, Object>> bookSearch(HashMap<String, Object> params) {
		return bookDao.bookSearch(params);
	}
	
	public List<HashMap<String, Object>>bookSearchMore(HashMap<String, Object> params){
		return bookDao.bookSearchMore(params);
	}
	
	public List<HashMap<String, Object>> bookSearchCategory(HashMap<String, Object> params) {
		return bookDao.bookSearchCategory(params);
	}

	public List<HashMap<String, Object>> selectUserBook(HashMap<String, Object> params) {
		return bookDao.selectUserBook(params);
	}

	public List<HashMap<String, Object>> selectBookMain() {
		return bookDao.selectBookMain();
	}

	public List<HashMap<String, Object>> bookAutocomplete(HashMap<String, Object> params) {

		return bookDao.bookAutocomplete(params);

	}
	
	//최송은이 만든 service
	public int starInsert(HashMap<String, Object> params) {
		return bookDao.starInsert(params);
	}
	public int starDelete(HashMap<String, Object> params) {
		return bookDao.starDelete(params);
	}
	public int starUpdate(HashMap<String, Object> params) {
		return bookDao.starUpdate(params);
	}
	public int insertReviewList(HashMap<String,Object> params) {
		return bookDao.insertReviewList(params);
	}
	public int updateReviewList(HashMap<String,Object> params) {
		return bookDao.updateReviewList(params);
	}
	public int deleteReviewList(HashMap<String, Object> params) {
	
	return bookDao.deleteReviewList(params);
	}
	public int starAvgCount(HashMap<String, Object> params) {
		return bookDao.starAvgCount(params);
	}
	public int starAvgDelete(HashMap<String, Object> params) {
	
		return bookDao.starAvgDelete(params);
	}
	public int starAvgUpdate(HashMap<String, Object> params) {
	
		return bookDao.starAvgUpdate(params);
	}
	public List<HashMap<String, Object>> recommended(String email){
		
		return bookDao.recommended(email);
	}
	
	
	
}
