package duytan.edu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import duytan.edu.entity.UserEntity;
import duytan.edu.service.UserEntityManager;

@Controller
@RequestMapping(value="/")
public class LoginController {

	@Autowired
	UserEntityManager userManager;
	
	@RequestMapping(value = "/saveuser")
	public String saveuser(HttpServletRequest request) {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		UserEntity userEntity=new UserEntity(username,password);
		userManager.saveUser(userEntity);
		return "home";
	}
	
	@RequestMapping(value="/login")
	public String login(){
		return "login";
	}
	@RequestMapping(value="/register")
	public String register(){
		return "register";
	}
}
