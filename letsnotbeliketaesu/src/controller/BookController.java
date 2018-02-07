package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.BestBookService;
import service.BookService;

@Controller
public class BookController {
	@Autowired
	private BestBookService bestBookService;
	@Autowired
	private BookService bookService;
	
	@RequestMapping("main.do")
	public ModelAndView main(HttpSession httpSession){
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();
		mav.addObject("bookRanking", bookRankingList);
		
		HashMap<String,Object> bookList = bookService.selectBook("진실 이야기");
		
		mav.addObject("book", bookList);
		
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping("getBook.do")
	public ModelAndView getBook(@RequestParam String title) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		ObjectMapper mapper = new ObjectMapper(); 
		HashMap<String, Object> bookInfo = bookService.selectBook(title);
		String json =
		new ObjectMapper().writeValueAsString(bookInfo);
		
		mav.addObject("bookInfo",json);
		mav.setViewName("getBook");
		return mav;
	}
}
