package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReportReasonsDao;



@Service
public class ReportReasonsService {
	@Autowired
	private IReportReasonsDao reportReasonsDao;
	
	public List<HashMap<String, Object>> selectAllReportReasons(){
		return reportReasonsDao.selectAllReportReasons();
	}
	
	public HashMap<String, Object> selectReportReasons(int num){
		return reportReasonsDao.selectReportReasons(num);
	}
	
	public void insertReportReasons(HashMap<String, Object> params) {
		reportReasonsDao.insertReportReasons(params);
	}
	public void updateReportReasons(HashMap<String, Object> params) {
		reportReasonsDao.updateReportReasons(params);
	}
	public void deleteReportReasons(int num) {
		reportReasonsDao.deleteReportReasons(num);
	}
}
