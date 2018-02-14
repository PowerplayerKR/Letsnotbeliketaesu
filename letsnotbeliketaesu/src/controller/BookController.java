package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.BestBookService;
import service.BookService;
import service.FavoritesService;
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

	@RequestMapping("main.do")
	public ModelAndView main(HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();
		mav.addObject("bookRanking", bookRankingList);

		HashMap<String, Object> bookList = bookService.selectBook("筌욊쑴�뼄 占쎌뵠占쎈튊疫뀐옙");

		mav.addObject("book", bookList);

		mav.setViewName("main");
		return mav;
	}

	

	

	@RequestMapping("mypage.do")
	public String mypage(@RequestParam HashMap<String, Object> params, Model model,HttpSession session) {
		
			params.put("myPage", 1);
			params.put("user_name", "bong");
			model.addAttribute("list", bookService.selectUserBook(params));
		    HashMap<String, Object> user = userService.selectUser(params);
            session.setAttribute("userInfo", user);
            System.out.println(user);
		return "mypage";

	}
	
	@RequestMapping("Star.do")
	public String StarPage(@RequestParam HashMap<String, Object> params, Model model) {
		params.put("myPage", 3);
		params.put("user_name", "bong");
		model.addAttribute("list",starList.selectUserStar(params));
		return "mypage";
	}
			
	

}
