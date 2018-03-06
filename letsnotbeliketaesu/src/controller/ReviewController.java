package controller;

import java.util.HashMap;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.ReviewListService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewListService reviewListService;
	
	@RequestMapping("getReview.do")
	@ResponseBody
	public ResponseEntity<String> getReview(@RequestParam String isbn) throws Exception{
		List<HashMap<String,Object>> reviewList = reviewListService.selectReviewList(isbn);
		String json = new ObjectMapper().writeValueAsString(reviewList);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}
	
}
