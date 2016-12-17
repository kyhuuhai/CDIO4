package duytan.edu.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import duytan.edu.entity.KhachHangEntity;
import duytan.edu.entity.UserEntity;
import duytan.edu.service.UserEntityManager;
import duytan.edu.validator.UserValidator;

@Controller
@RequestMapping(value="/")
public class LoginController {

	@Autowired
	UserEntityManager userManager;
	
//	@Autowired
//	UserValidator valaditor;
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public String saveuser(HttpServletRequest request) {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		UserEntity userEntity=new UserEntity(username,password,new KhachHangEntity("bin", new Date(), "hahah@gmail.com", "0123123213"));
		userManager.saveUser(userEntity);
		return "redirect:/";
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
