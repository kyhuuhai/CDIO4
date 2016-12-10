package duytan.edu.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

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
import duytan.edu.entity.CartEntity;
import duytan.edu.entity.HoadonEntity;
import duytan.edu.entity.SanPhamEntity;
import duytan.edu.entity.UserEntity;
import duytan.edu.service.CTHoaDonEntityManager;
import duytan.edu.service.CartEntityManager;
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
	
	@Autowired 
	CartEntityManager cartManager;
	
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
	
	@RequestMapping( method = RequestMethod.GET)
	public ModelAndView index( ModelAndView model) {
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value="/search")
	public String searchProduct( Model model,HttpServletRequest request){
		String name = request.getParameter("name");
		List<SanPhamEntity> product= sanphamManager.findByName(name);
		model.addAttribute("sanpham", product);
		return "index";
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
	public String cart(Model model,Principal principal){
		model.addAttribute("cart", cartManager.findByUserName(principal.getName()));	
		return "phonecart";
	}

	@RequestMapping(value="/addcart")
	public String addCart(@RequestParam String idsp,Model model,Principal principal){
		String username = principal.getName();
		UserEntity user = userManager.getUserByUserName(username);
		SanPhamEntity product=sanphamManager.findById(idsp);
		
		if(isUsernameInCartExist(idsp,username))
			cartManager.UpdateSoLuong(idsp);
		else {
			cartManager.Save(new CartEntity(username, "1", product.getdongiasp(), product));
		}
		model.addAttribute("cart", cartManager.findByUserName(username));
		return "redirect:/cart";
	}
	
	private boolean isHoadonExist(String id,String username){
		for (CTHoaDonEntity ctHoaDonEntity : cthoadonManager.findByHoaDonUserEntityUsername(username)) {
			if(ctHoaDonEntity.getsanPham().getId().equals(id))
				return true;
		}
		return false;
	}
	
	private boolean isUsernameInCartExist(String id,String username){
		for (CartEntity cart : cartManager.findByUserName(username)) {
			if(cart.getSanPhamEntity().getId().equals(id))
				return true;
		}
		return false;
	}
	
	@RequestMapping(value="/deletecart")
	public String deletecart(@RequestParam String idcart,Model model){
		cartManager.deleteByIDSANPHAM(idcart);
		return "redirect:/cart";
	}
	@RequestMapping(value="/checkout")
	public String checkout(Model model,Principal principal){
		HoadonEntity hoadon = hoadonManager.save(new HoadonEntity(new SimpleDateFormat("yyyy-MM-dd").format(new Date()),userManager.getUserByUserName(principal.getName())));
		for (CartEntity cart : cartManager.findByUserName(principal.getName())) {
			cthoadonManager.Save(new CTHoaDonEntity(Integer.parseInt(cart.getSoluong()),(float) 1.5, cart.getGiaban(), cart.getSanPhamEntity(), hoadon));
		}
		return "thank";
	}
}
