package com.mgmtp.blog.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;	
import com.mgmtp.blog.service.SessionService;
import com.mgmtp.blog.model.User;
import com.mgmtp.blog.service.UserService;

@Controller
public class BaseController {

	@Autowired
	UserService userService;

	@Autowired
	SessionService sessionService;

	@RequestMapping("/")
	public String showIndex(Model model, HttpServletRequest request) {
		List<User> users = userService.findAll();
		model.addAttribute("users", users);

		// check session
		Cookie loginCookie = sessionService.checkLoginCookie(request);
		if (loginCookie != null){
			sessionService.checkSessionId(loginCookie.getValue());
			return "redirect:/home";
		}
		return "login";
	}

}
