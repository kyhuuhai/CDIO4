package duytan.edu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Locale.Category;
import java.util.function.Supplier;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import duytan.edu.entity.LoaiSPEntity;
import duytan.edu.entity.SanPhamEntity;
import duytan.edu.entity.ThuongHieuEntity;
import duytan.edu.service.LoaiSPEntityManager;
import duytan.edu.service.SanPhamEntityManager;
import duytan.edu.service.ThuongHieuEntityManager;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	SanPhamEntityManager sanphamManager;
	
	@Autowired
	LoaiSPEntityManager loaispManager;
	
	@Autowired 
	ThuongHieuEntityManager thuonghieuManager;
	
	
	@ModelAttribute
	public void addAttribute(Model model){
		model.addAttribute("danhmuc",loaispManager.getAllLoaiSP());
		model.addAttribute("HangSanXuat",thuonghieuManager.getAllThuongHieu());
		model.addAttribute("sanpham",sanphamManager.getAllSanPham());
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addObject("serverTime", formattedDate );
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index( ModelAndView model) {
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value="/detail")
	public String getProduct(@RequestParam String idsp, Model model){
		SanPhamEntity product= sanphamManager.findById(idsp);
		model.addAttribute("pdetail", product);
		return "product-detail";
	}
}
