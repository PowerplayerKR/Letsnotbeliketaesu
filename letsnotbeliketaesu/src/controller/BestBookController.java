package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.BestBookService;

@Controller
public class BestBookController {
	@Autowired
	private BestBookService bestBookService;
	
	@RequestMapping("main.do")
	public ModelAndView main(HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> bookRankingList = bestBookService.selectRankingBestBook();
		mav.addObject("bookRanking", bookRankingList);
		mav.setViewName("main");
		return mav;
	}
}
