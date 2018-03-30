package controller;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

		 if(userService.insertUser(params)==1) {
		JSONParser parser = new JSONParser();
		File file1=new File("C:\\Users\\choisongeun\\Desktop\\letsnotbeliketaesu\\WebContent\\json\\userInfo.json");
		System.out.println(file1.exists());
		if(file1.exists()) {
		try {
			System.out.println("1");
		JSONObject obj = (JSONObject) parser.parse(new FileReader("C:\\Users\\choisongeun\\Desktop\\letsnotbeliketaesu\\WebContent\\json\\userInfo.json"));
		System.out.println(obj.get("email"));
		JSONArray list=(JSONArray)obj.get("email");
		list.add(params.get("email"));
		obj.put("email",list);
		FileWriter file = new FileWriter("C:\\Users\\choisongeun\\Desktop\\letsnotbeliketaesu\\WebContent\\json\\userInfo.json");
        file.write(obj.toJSONString());
        file.flush();
        file.close();
			System.out.println("2");
		} catch (Exception e) {
			e.printStackTrace();
		}
		}else {
			System.out.println("3");
			try {	
			FileWriter file = new FileWriter("C:\\Users\\choisongeun\\Desktop\\letsnotbeliketaesu\\WebContent\\json\\userInfo.json");
			
			JSONObject jobj = new JSONObject();

	        //Json Array 생성.
			 JSONArray maglist = new JSONArray();
			List<HashMap<String, Object>> q= (List<HashMap<String, Object>>)userService.selectAllUser();
			maglist.add(params.get("email"));
			for(HashMap<String, Object> zz :q) {
				maglist.add(zz.get("email"));
				System.out.println(zz.get("email"));
			}
			jobj.put("email", maglist);
			
	        file.write(jobj.toJSONString());
	        file.flush();
	        file.close();
	        
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		 }else {
			 return "redirect:joinForm.do";
		 }
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

		userService.updateUser(params);

		return "redirect:main.do";

	}

	@RequestMapping("deleteForm.do")
	public String delete(@RequestParam HashMap<String, Object> params, HttpSession session) {

		HashMap<String, Object> userInfo = (HashMap<String, Object>) session.getAttribute("userInfo");

		int result = userService.deleteUser(params);

		if (result == 1)

			return "redirect:loginForm.do";

		else

			return "redirect:main.do";

	}

	@RequestMapping("login.do")
	public String login(@RequestParam HashMap<String, Object> params, HttpSession session) {

		HashMap<String, Object> user = userService.selectUser(params);

	if (user == null) {
			session.setAttribute("msg", "ddd");
          	  return "redirect:loginForm.do";
		}

		session.setAttribute("userInfo", user);

		return "redirect:main.do";

	}
	@RequestMapping("googleLogin.do")
	@ResponseBody
	public String googleLogin(@RequestParam HashMap<String, Object> params, HttpSession session) throws Exception {
		params.put("email",params.get("[U3]"));
		params.put("name",params.get("[ig]"));
		session.setAttribute("userInfo",params);
		System.out.println(params);
		
		return "{\"booknum\":\"�뿉�윭�궡吏�留�\" }";
	}
@RequestMapping("kakaoLogin.do")
	@ResponseBody
	public String kakaoLogin(@RequestParam HashMap<String, Object> params, HttpSession session) throws Exception{
		 System.out.println(params);
		params.put("email", params.get("email"));
		 session.setAttribute("userInfo", params);
		
		 return "{\"booknum\":\"�뿉�윭�궡吏�留�\" }";
	}
}
