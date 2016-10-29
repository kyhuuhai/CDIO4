package duytan.edu.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		List<LoaiSPEntity> danhmuc = loaispManager.getAllLoaiSP();
		System.out.println(danhmuc.get(0).getTenloai());
		for (LoaiSPEntity loaiSPEntity : danhmuc) {
			logger.info("Loaisp"+loaiSPEntity.getTenloai());
		}
		List<ThuongHieuEntity> HangSanXuat = thuonghieuManager.getAllThuongHieu();
		List<SanPhamEntity> sanpham = sanphamManager.getAllSanPham();
		
		model.addObject("danhmuc",danhmuc);
		model.addObject("HangSanXuat",HangSanXuat);
		model.addObject("sanpham",sanpham);
		model.setViewName("index");
		return model;
	}
}
