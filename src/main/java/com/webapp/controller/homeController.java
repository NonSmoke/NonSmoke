//http://localhost:8080/EmpWeb/webapp/login/login

package com.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class homeController {
	
	static Log log = LogFactory.getLog(homeController.class);
	

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() { // 로그인 화면
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("login() GET.....");
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		
		
		return "/login/home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(User user, HttpSession session) { // 로그인 처리
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("login() POST.......");
		log.info("id = " + user.getId());
		log.info("password = " + user.getPassword());
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		
		
		if("webapp".equals(user.getId()) && "1234".equals(user.getPassword())) { // 로그인 성공
			
			session.setAttribute("user", user);
			return "login/success";
			
		} else { // 로그인 실패
			
			return "redirect:home";
		}

	}
	

	
}
