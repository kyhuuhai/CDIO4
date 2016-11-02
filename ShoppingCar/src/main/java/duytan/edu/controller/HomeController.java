package duytan.edu.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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

import duytan.edu.entity.CTHoaDonEntity;
import duytan.edu.entity.HoadonEntity;
import duytan.edu.entity.SanPhamEntity;
import duytan.edu.service.CTHoaDonEntityManager;
import duytan.edu.service.HoaDonEntityManager;
import duytan.edu.service.LoaiSPEntityManager;
import duytan.edu.service.SanPhamEntityManager;
import duytan.edu.service.ThuongHieuEntityManager;
import duytan.edu.service.UserEntityManager;

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
	
	@Autowired
	CTHoaDonEntityManager cthoadonManager;
	
	@Autowired
	HoaDonEntityManager hoadonManager;
	
	@Autowired
	UserEntityManager userManager;
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
	
	@RequestMapping(value="/loaisp")
	public String findSup(@RequestParam String idloaisp,Model model){
		List<SanPhamEntity> sp= loaispManager.findById(idloaisp).getSanpham();
		model.addAttribute("sp", sp);	
		return "productsup";
	}

	@RequestMapping(value="/cart")
	public String cart(Model model){
		model.addAttribute("cart", cthoadonManager.getAll());	
		return "phonecart";
	}

	@RequestMapping(value="/addcart")
	public String addCart(@RequestParam String idsp,Model model){
		SanPhamEntity product=sanphamManager.findById(idsp);
		if(isExist(idsp))
			cthoadonManager.UpdateSoLuong(idsp);
		else {
			HoadonEntity hd = hoadonManager.save(new HoadonEntity(new SimpleDateFormat("yyyy-MM-dd").format(new Date()),userManager.getUserByUserName("bin") ));
			cthoadonManager.Save(new CTHoaDonEntity(1,new Float(1.5),new Float( product.getDongiasp()*1.5), product, hd));
		}
		model.addAttribute("cart", cthoadonManager.getAll());
		return "phonecart";
	}
	
	private boolean isExist(String id){
		for (CTHoaDonEntity ctHoaDonEntity : cthoadonManager.getAll()) {
			if(ctHoaDonEntity.getsanPham().getId().equals(id))
				return true;
		}
		return false;
	}
	@RequestMapping(value="/deletecart")
	public String deletecart(@RequestParam String idsp){
		cthoadonManager.deleteByIDSANPHAM(idsp);
		return "phonecart";
	}
}
