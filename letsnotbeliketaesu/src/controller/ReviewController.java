package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import service.ReportListService;
import service.ReportReasonsService;
import service.ReviewListService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewListService reviewListService;
	@Autowired
	private ReportListService reportListService;
	@Autowired
	private ReportReasonsService reportReasonsService;

	@RequestMapping("getReview.do")
	@ResponseBody
	public ResponseEntity<String> getReview(@RequestParam String isbn) throws Exception {
		List<HashMap<String, Object>> reviewList = reviewListService.selectReviewList(isbn);
		String json = new ObjectMapper().writeValueAsString(reviewList);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping("getReviewMore.do")
	@ResponseBody
	public ResponseEntity<String> getReviewMore(@RequestParam HashMap<String, Object> params) throws Exception {
		List<HashMap<String, Object>> reviewList = reviewListService.selectReviewListMore(params);
		List<HashMap<String, Object>> list = new ArrayList<>();
		for (HashMap<String, Object> map : reviewList) {
			int rownum = Integer.valueOf(map.get("ROWNUM").toString());
			int lastNum = Integer.valueOf(params.get("num").toString());
			if (rownum > lastNum && rownum <= lastNum + 5) {
				list.add(map);
			}
		}
		String json = new ObjectMapper().writeValueAsString(list);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping("getCountReview.do")
	@ResponseBody
	public ResponseEntity<String> getCountReview(@RequestParam String isbn) throws Exception {
		int count = reviewListService.selectCountReviewList(isbn);
		HashMap<String, Object> map = new HashMap<>();
		map.put("num", count);
		String json = new ObjectMapper().writeValueAsString(map);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping("reviewReport.do")
	@ResponseBody
	public String reviewReport(@RequestParam HashMap<String, Object> params, HttpSession session) {
		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("reporter_name", "eee");
		params.put("report_name", "blyat");
		params.put("report_reason", "troll");
		params.put("isbn", "1");
		System.out.println(params);
		int report_reason = reportReasonsService.insertReportReasons(params);
		params.put("report_reason", report_reason);
		System.out.println(params);
		reportListService.insertReportList(params);
		return "";
	}

}
