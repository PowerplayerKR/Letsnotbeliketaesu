package controller;

import java.util.HashMap;

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
	@RequestMapping("login.do")
	public String login(@RequestParam HashMap<String,Object> params,HttpSession session) {
		HashMap<String,Object> user =  userService.selectUser(params);
		session.setAttribute("userInfo",user);
		return "redirect:main.do";
	}
}
