package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.BestBookService;
import service.BookService;
import service.FavoritesService;
import service.NewBookService;
import service.NotInterestedService;
import service.ReportListService;
import service.ReviewListService;
import service.StarPointListService;
import service.UserService;

@Controller
public class BookController {
	@Autowired
	private BestBookService bestBookService;
	@Autowired
	private BookService bookService;
	@Autowired
	private StarPointListService starList;
	@Autowired
	private UserService userService;
	@Autowired
	private ReviewListService listService;
	@Autowired
	private NotInterestedService notInterested;
	@Autowired
	private NewBookService newBookService;

	@RequestMapping("main.do")
	public String main(HttpSession session, Model model) {

		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");

		if (userInfo == null)

			return "redirect:loginForm.do";

		List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();

		model.addAttribute("bookRanking", bookRankingList);

		List<HashMap<String, Object>> book = bookService.selectBookMain();

		List<HashMap<String, Object>> bestBook = bookService.selectBookMain();

		List<HashMap<String, Object>> newBook = bookService.selectBookMain();

		model.addAttribute("userInfo", userInfo);

		model.addAttribute("book", book);

		model.addAttribute("bestBook", bestBook);

		model.addAttribute("newBook", newBook);

		return "main";

	}

	@RequestMapping("bestBook.do")
	public ModelAndView bestBook() {

		ModelAndView mav = new ModelAndView();

		List<HashMap<String, Object>> bestBookList = bestBookService.selectAllBestBook();

		mav.addObject("bestBookList", bestBookList);

		mav.setViewName("bestBook");

		return mav;

	}

	@RequestMapping("newBook.do")
	public ModelAndView newBook() {

		ModelAndView mav = new ModelAndView();

		List<HashMap<String, Object>> newBookList = newBookService.selectAllNewBook();

		mav.addObject("newBookList", newBookList);

		mav.setViewName("newBook");

		return mav;

	}

	@RequestMapping("bookSearch.do")
	public ModelAndView bookSearch(@RequestParam HashMap<String,Object> params) {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> searchBookList = bookService.bookSearch(params);
		mav.addObject("searchBookList",searchBookList);
		mav.setViewName("bookSearchList");
		return mav;
	}
	
	@RequestMapping("bookSearchMore.do")
	@ResponseBody
	public ResponseEntity<String> bookSearchMore(@RequestParam HashMap<String,Object> params) throws Exception{
		List<HashMap<String, Object>> bookInfo = bookService.bookSearchMore(params);
		String json = new ObjectMapper().writeValueAsString(bookInfo);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping("mypage.do")
	public String mypage(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {

		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");

		params.put("myPage", 1);

		params.put("email", user.get("email"));

		params.put("name", user.get("name"));

		model.addAttribute("list", bookService.selectUserBook(params));

		System.out.println(params);

		return "mypage";

	}

	@RequestMapping("notInterested.do")
	public String Interested(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {

		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");

		params.put("myPage", 2);

		params.put("email", user.get("email"));

		params.put("name", user.get("name"));

		model.addAttribute("list", bookService.selectUserBook(params));

		return "mypage";

	}

	@RequestMapping("UserStarList.do")
	public String StarPage(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {

		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		System.out.println(user);

		params.put("myPage", 3);

		params.put("email", user.get("email"));

		model.addAttribute("list", bookService.selectUserBook(params));

		System.out.println(bookService.selectUserBook(params));

		return "mypage";

	}

	@RequestMapping("review.do")
	public String reviewPage(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {

		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");

		System.out.println(user);

		params.put("myPage", 4);

		params.put("email", user.get("email"));

		params.put("name", user.get("name"));

		model.addAttribute("list", listService.selectAllReviewList(params));

		return "review";

	}

	@RequestMapping("bookReview.do")
	public void bookreview() {

	}

	@RequestMapping("reviewInsert.do")
	public String insert(@RequestParam HashMap<String, Object> params) {

		listService.insertReviewList(params);

		return "redirect:review.do";

	}

	@RequestMapping("starInsert.do")
	@ResponseBody
	public String starInsert(@RequestParam HashMap<String, Object> params) {

		starList.starInsert(params);

		return "{\"booknum\":\"에러내지마\" }";

	}

	@RequestMapping("starUpdate.do")
	@ResponseBody
	public String starUpdate(@RequestParam HashMap<String, Object> params) {

		starList.starUpdate(params);
		
		return "{\"booknum\":\"에러내지마\" }";

	}

	@RequestMapping("starDelete.do")
	@ResponseBody
	public String starDelete(@RequestParam HashMap<String, Object> params) {

		starList.starDelete(params);

		return "{\"booknum\":\"에러내지마\" }";

	}

	@RequestMapping("getBook.do")
	@ResponseBody
	public ResponseEntity<Object> getBook(@RequestParam String title) throws Exception {

		ObjectMapper mapper = new ObjectMapper();

		HashMap<String, Object> bookInfo = bookService.selectBook(title);

		String json = new ObjectMapper().writeValueAsString(bookInfo);

		HttpHeaders responseHeaders = new HttpHeaders();

		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);

	}

	@RequestMapping("autocomplete.do")

	@ResponseBody

	public ResponseEntity<String> autocomplete(@RequestParam HashMap<String, Object> params,
			HttpServletResponse response) throws Exception {

		HttpHeaders responseHeaders = new HttpHeaders();

		responseHeaders.add("Content-Type", MediaType.APPLICATION_JSON_UTF8_VALUE);

		JSONArray list = new JSONArray();

		JSONObject obj = null;

		for (HashMap<String, Object> map : bookService.bookAutocomplete(params)) {

			obj = new JSONObject();

			obj.put("title", map.get("title").toString());

			list.add(obj);

		}

		HashMap<String, Object> map = new HashMap<>();

		return new ResponseEntity(new ObjectMapper().writeValueAsString(list), responseHeaders, HttpStatus.OK);

	}

	@RequestMapping("newBookMore.do")

	@ResponseBody

	public ResponseEntity<String> newBookMore(@RequestParam int num) throws Exception {

		List<HashMap<String, Object>> newBookList = newBookService.selectNewBookMore(num);

		String json = new ObjectMapper().writeValueAsString(newBookList);

		HttpHeaders responseHeaders = new HttpHeaders();

		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);

	}

}
