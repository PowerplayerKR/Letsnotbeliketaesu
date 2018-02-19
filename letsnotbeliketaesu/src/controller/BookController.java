package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.BestBookService;
import service.BookService;
import service.FavoritesService;
import service.NewBookService;
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
	private NewBookService newBookService;

	@RequestMapping("main.do")
	public String main(HttpSession httpSession, Model model) {
		HashMap<String, Object> userInfo = (HashMap<String, Object>) httpSession.getAttribute("userInfo");
		if (userInfo == null)
			return "redirect:loginForm.do";
		else {
			List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();
			model.addAttribute("bookRanking", bookRankingList);
			HashMap<String, Object> bookList = bookService.selectBook("筌욊쑴�뼄 占쎌뵠占쎈튊疫뀐옙");
			model.addAttribute("userInfo", userInfo);
			model.addAttribute("book", bookList);
			return "main";
		}
	}

	@RequestMapping("getBook.do")
	public ModelAndView getBook(@RequestParam String title) throws Exception {
		ModelAndView mav = new ModelAndView();

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> bookInfo = bookService.selectBook(title);
		String json = new ObjectMapper().writeValueAsString(bookInfo);

		mav.addObject("bookInfo", json);
		mav.setViewName("getBook");
		return mav;
	}

	@RequestMapping("bookSearch.do")
	public ModelAndView bookSearch(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> searchBookList = bookService.bookSearch(params);
		mav.addObject("searchBookList", searchBookList);
		mav.setViewName("bookSearchList");
		return mav;
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

}
