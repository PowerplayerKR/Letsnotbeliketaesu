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

	public List<HashMap<String, Object>> bookSearchCategory(HashMap<String, Object> params) {
		return bookDao.bookSearchCategory(params);
	}

	public List<HashMap<String, Object>> selectUserBook(HashMap<String, Object> params) {
		return bookDao.selectUserBook(params);
	}

	public int starInsert(HashMap<String, Object> params) {
		return bookDao.starInsert(params);
	}

	public int starDelete(HashMap<String, Object> params) {
		return bookDao.starDelete(params);
	}

	public int starUpdate(HashMap<String, Object> params) {
		return bookDao.starUpdate(params);
	}
}
