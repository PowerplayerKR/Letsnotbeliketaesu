package controller;

 

import java.util.HashMap;

 

import javax.servlet.http.HttpSession;

 

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;

 

import dao.IStarPointListDao;

 

@Controller

public class StarController {

 

	@Autowired

	private IStarPointListDao starPointListDao ;

	

	

	@RequestMapping("starSelectOne.do")

	public HashMap<String, Object> starSelect(HashMap<String, Object> params){

		

		

		return starPointListDao.starSelectOne(params); 

	}

	@RequestMapping("starInsert.do")

	public int starInsert(HashMap<String, Object> params) {

		

		return starPointListDao.starInsert(params);

	}

	@RequestMapping("starUpdate.do")

	public int starUpdate(HashMap<String, Object> params) {

		

		return starPointListDao.starUpdate(params);

	}

	@RequestMapping("starDelete.do")

	public int starDelete(HashMap<String, Object> params) {

		

		return starPointListDao.starDelete(params);

	}

	@RequestMapping("starQuery.do")

	@ResponseBody

	public void starQuery(@RequestParam HashMap<String, Object>params,HttpSession session) {

		params.put("email", ((HashMap<String, Object>) session.getAttribute("userInfo")).get("email"));

		HashMap<String, Object> result=starPointListDao.starSelectOne(params);

	

		 

		 if(result==null){

			 System.out.println(params);

			 starPointListDao.starInsert(params);

		 }else {

				float resultStarPoint=Float.parseFloat(result.get("star_point").toString());

				float paramsStarPoint=Float.parseFloat(params.get("star_point").toString());

				

					if(resultStarPoint==paramsStarPoint) {

						 starPointListDao.starDelete(params);

					 }else {

						 starPointListDao.starUpdate(params);

					 }

					

		 }

	}

	

	

	

}