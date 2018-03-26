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
	@Autowired
	private FavoritesService favoritesService;

	@RequestMapping("main.do")
	public String main(HttpSession session, Model model) {

		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");

		if (userInfo == null)

			return "redirect:loginForm.do";

		List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();

		model.addAttribute("bookRanking", bookRankingList);

		List<HashMap<String, Object>> book = bookService.selectBookMain();

		List<HashMap<String, Object>> bestBook = bestBookService.selectBookMain();

		List<HashMap<String, Object>> newBook = newBookService.selectBookMain();

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

	@RequestMapping("bestBookMore.do")
	@ResponseBody
	public ResponseEntity<String> bestBookMore(@RequestParam int num) throws Exception {
		List<HashMap<String, Object>> bestBookList = bestBookService.selectBestBookMore(num);
		String json = new ObjectMapper().writeValueAsString(bestBookList);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.OK);
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
	public ModelAndView bookSearch(@RequestParam HashMap<String, Object> params, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("email", userInfo.get("email"));
		List<HashMap<String, Object>> searchBookList = bookService.bookSearch(params);
		mav.addObject("search", params);
		mav.addObject("searchBookList", searchBookList);
		mav.setViewName("bookSearchList");
		return mav;
	}

	@RequestMapping("bookSearchMore.do")
	@ResponseBody
	public ResponseEntity<String> bookSearchMore(@RequestParam HashMap<String, Object> params) throws Exception {
		List<HashMap<String, Object>> bookInfo = bookService.bookSearchMore(params);

		List<HashMap<String, Object>> list = new ArrayList<>();
		for (HashMap<String, Object> map : bookInfo) {
			int rownum = Integer.valueOf(map.get("ROWNUM").toString());
			int lastNum = Integer.valueOf(params.get("num").toString());
			if (rownum > lastNum && rownum <= lastNum + 20) {
				list.add(map);
			}
		}
		String json = new ObjectMapper().writeValueAsString(list);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity(json, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping("mypage1.do")
	public String mypage(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {

		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");

		params.put("myPage", 1);

		params.put("email", user.get("email"));

		model.addAttribute("book", bookService.selectUserBook(params));

		System.out.println(bookService.selectUserBook(params));

		return "mypage";

	}

	@RequestMapping("mypage3.do")
	public String Interested(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("myPage", 3);
		params.put("email", user.get("email"));
		model.addAttribute("book", bookService.selectUserBook(params));
		System.out.println(bookService.selectUserBook(params));
		return "mypage3";

	}

	@RequestMapping("mypage2.do")
	public String StarPage(@RequestParam HashMap<String, Object> params, Model model, HttpSession session) {
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		System.out.println(user);
		params.put("myPage", 2);
		params.put("email", user.get("email"));
		System.out.println(params);
		model.addAttribute("book", bookService.selectUserBook(params));
		model.addAttribute("user", user);
		System.out.println(bookService.selectUserBook(params));

		return "mypage2";
	}

	@RequestMapping("bookReview.do")
	public void bookreview() {

	}

	@RequestMapping("reviewInsert.do")
	@ResponseBody
	public String reviewInsert(@RequestParam HashMap<String, Object> params, HttpSession session) {
		params.put("review_writer", ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email"));
		bookService.insertReviewList(params);

		return "{\"booknum\":\"에러내지마\" }";
	}

	@RequestMapping("reviewUpdate.do")
	@ResponseBody
	public String reviewUpdate(@RequestParam HashMap<String, Object> params, HttpSession session) {
		params.put("review_writer", ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email"));
		bookService.updateReviewList(params);

		return "{\"booknum\":\"에러내지마\" }";
	}

	@RequestMapping("reviewDelete.do")
	@ResponseBody
	public String reviewDelete(@RequestParam HashMap<String, Object> params, HttpSession session) {
		params.put("review_writer", ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email"));
		bookService.deleteReviewList(params);

		return "{\"booknum\":\"에러내지마\" }";
	}

	@RequestMapping("recommended.do")
	public ModelAndView recommended(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		List<HashMap<String, Object>> recommendBook = bookService
				.recommended1((String) ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email"));
		recommendBook.addAll(bookService
				.recommended2((String) ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email")));
		for (int i = 0; i < recommendBook.size(); i++) {
			for (int j = i + 1; j < recommendBook.size(); j++) {
				if (recommendBook.get(i).get("isbn") == recommendBook.get(j).get("isbn")) {
					recommendBook.remove(j);
				}
			}
		}

		mav.addObject("recommendBook", recommendBook);
		System.out.println(recommendBook);
		mav.setViewName("recommended");

		return mav;
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

	@RequestMapping("DeleteLike.do")
	@ResponseBody
	public String DeleteLike(@RequestParam HashMap<String, Object> params, HttpSession session) {
		System.out.println(params);
		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("email", userInfo.get("email"));
		favoritesService.deleteFavorites(params);
		return "{\"booknum\":\"오류내지마\" }";
	}

	@RequestMapping("InsertLike.do")
	@ResponseBody
	public String InsertLike(@RequestParam HashMap<String, Object> params, HttpSession session) {
		System.out.println(params);
		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("email", userInfo.get("email"));
		favoritesService.insertFavorites(params);
		return "{\"booknum\":\"오류내지마\" }";
	}

}
