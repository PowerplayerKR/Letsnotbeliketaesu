package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ICategorysDao;

@Service
public class CategorysService {
	@Autowired
	private ICategorysDao categorysDao;
	
	public List<HashMap<String, Object>> selectAllCategorys(){
		return categorysDao.selectAllCategorys();
	}
	
	public HashMap<String, Object> selectCategorys(int num){
		return categorysDao.selectCategorys(num);
	}
	
	public void insertCategorys(HashMap<String, Object> params) {
		categorysDao.insertCategorys(params);
	}
	public void updateCategorys(HashMap<String, Object> params) {
		categorysDao.updateCategorys(params);
	}
	public void deleteCategorys(int num) {
		categorysDao.deleteCategorys(num);
	}
}
