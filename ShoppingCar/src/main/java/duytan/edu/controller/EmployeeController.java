package duytan.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import duytan.edu.service.EmployeeEntityManager;

@Controller
@RequestMapping(value="/")
public class EmployeeController {
	
	@Autowired
	EmployeeEntityManager empManager;
	
	@RequestMapping(value="/employee")
	private ModelAndView listEmp(){
		ModelAndView model = new ModelAndView();
		model.setViewName("employee");
		model.addObject("list", empManager.findAll());
		return model;
	}
}
