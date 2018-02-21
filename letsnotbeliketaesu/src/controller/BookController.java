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

	@RequestMapping("review.do")
	public String reviewPage(@RequestParam HashMap<String, Object> params,Model model,HttpSession session) {
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		System.out.println(user);
		params.put("myPage", 4);
		params.put("user_name", user.get("name"));
		model.addAttribute("list",listService.selectAllReviewList(params));
		System.out.println(listService.selectAllReviewList(params));
		return "review";
		
	}
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
	@RequestMapping("notInterested.do")
	public String Interested(@RequestParam HashMap<String, Object> params,Model model,HttpSession session) {
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		params.put("myPage", 2);
		params.put("user_name", user.get("name"));
		model.addAttribute("list",bookService.selectUserBook(params));
		return "mypage";
		
		
	}

	@RequestMapping("mypage.do")
	public String mypage(@RequestParam HashMap<String, Object> params, Model model,HttpSession session) {
		  HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
			params.put("myPage", 1);
			params.put("user_name", user.get("name"));
			System.out.println(user);
			model.addAttribute("list", bookService.selectUserBook(params));
			System.out.println(params);
		  
		return "mypage";

	}
	
	@RequestMapping("Star.do")
	public String StarPage(@RequestParam HashMap<String, Object> params, Model model,HttpSession session) {
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("userInfo");
		System.out.println(user);
		params.put("myPage", 3);
		params.put("user_name", user.get("name"));
		model.addAttribute("list",starList.selectUserStar(params));
		System.out.println(starList.selectUserStar(params));
		return "mypage";
	}

	@RequestMapping("bookReview.do")
		public void bookreview() {
		
	}
	@RequestMapping("reviewInsert.do")
	public String insert(@RequestParam HashMap<String, Object> params) {
		listService.insertReviewList(params);
		System.out.println(params);
		return "redirect:review.do";
			
	}
	
	

}
