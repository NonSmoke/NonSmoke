//http://localhost:8080/EmpWeb/webapp/login/login

package com.webapp.controller;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.model.User;

@Controller
public class LoginController {
	
	static Log log = LogFactory.getLog(LoginController.class);
	
	@Autowired
	DataSource dataSource;
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(User user, HttpSession session) { // 로그인 처리
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("login() POST.......");
		log.info("id = " + user.getId());
		log.info("password = " + user.getPassword());
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
	
	
		
		if("123".equals(user.getId()) && "123".equals(user.getPassword())) { // 로그인 성공
			
			session.setAttribute("user", user);
			return "webapp/success";
			
		} else { // 로그인 실패
			
			return "redirect:login";
		}

	}

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){ // 로그아웃
		
		session.invalidate(); // 세션 scope가 사라진다
		
		return "logoutsuccess";
	}
	
	
}
