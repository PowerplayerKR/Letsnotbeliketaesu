package controller;

import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("loginForm.do")
	public void loginForm() {

	}

	@RequestMapping("joinForm.do")
	public void joinForm() {

	}

	@RequestMapping("join.do")
	public String joinForm(@RequestParam HashMap<String, Object> params) {
		userService.insertUser(params);
		return "redirect:loginForm.do";

	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:loginForm.do";
	}

	@RequestMapping("reviseForm.do")
	public void revise() {

	}

	@RequestMapping("revise.do")
	public String reviseForm(@RequestParam HashMap<String, Object> params) {
		System.out.println(params);
		userService.updateUser(params);
		return "redirect:main.do";
	}

	@RequestMapping("deleteForm.do")
	public String delete(@RequestParam HashMap<String, Object> params) {
		int result = userService.deleteUser(params);
		if (result == 1)
			return "redirect:loginForm.do";
		else
			return "redirect:main.do";
	}

	@RequestMapping("login.do")
	public String login(@RequestParam HashMap<String, Object> params, HttpSession session) {
		HashMap<String, Object> user = userService.selectUser(params);
		if (user == null) 
			return "redirect:loginForm.do";
		session.setAttribute("userInfo", user);
		return "redirect:main.do";
	}

}
