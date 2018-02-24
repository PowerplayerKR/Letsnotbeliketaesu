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
	
	public int starInsert(HashMap<String, Object> params) {
		return starPointListDao.starInsert(params);
	}

	public int starDelete(HashMap<String, Object> params) {
		return starPointListDao.starDelete(params);
	}

	public int starUpdate(HashMap<String, Object> params) {
		return starPointListDao.starUpdate(params);
	}
}
