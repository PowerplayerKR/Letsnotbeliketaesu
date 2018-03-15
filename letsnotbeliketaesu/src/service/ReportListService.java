package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReportListDao;

@Service
public class ReportListService {
	@Autowired
	private IReportListDao reportListDao;

	public List<HashMap<String, Object>> selectAllReportList() {
		return reportListDao.selectAllReportList();
	}

	public HashMap<String, Object> selectReportList(int num) {
		return reportListDao.selectReportList(num);
	}

	public void insertReportList(HashMap<String, Object> params) {
		reportListDao.insertReportList(params);
	}

	public void updateReportList(HashMap<String, Object> params) {
		reportListDao.updateReportList(params);
	}

	public void deleteReportList(int num) {
		reportListDao.deleteReportList(num);
	}
}
