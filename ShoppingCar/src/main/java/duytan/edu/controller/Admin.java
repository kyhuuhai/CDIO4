package duytan.edu.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import duytan.edu.entity.KhachHangEntity;
import duytan.edu.entity.SanPhamEntity;
import duytan.edu.service.HoaDonEntityManager;
import duytan.edu.service.KhachHangEntityManager;
import duytan.edu.service.SanPhamEntityManager;
import duytan.edu.service.ThuongHieuEntityManager;
import duytan.edu.service.UserEntityManager;

@Controller
public class Admin {
@Autowired
UserEntityManager userma;
@Autowired
KhachHangEntityManager khahh;
@Autowired
SanPhamEntityManager sanPhamEntityManager;
@Autowired
ThuongHieuEntityManager thuongHieuEntityManager;
	
//	@RequestMapping(value="/admin")
//	public String admin(){
//		
//	return "admin";
//	}
	
	@RequestMapping(value="/customer")
	public String customer(Model model){
		List<KhachHangEntity> khGroup=  khahh.getAll();
		model.addAttribute("customer", khGroup);
		return "customer";
		
	}
	@RequestMapping(value="/deletecust")
	public String deletecust(@RequestParam String id, Model model){
		if(khahh.findId(id)!=null){
			khahh.delete(id);
		}else{
			model.addAttribute("message", "Không tìm thấy dữ liệu");
		}
		return "redirect:/customer";
	}
	@RequestMapping(value="/editcustomer",method=RequestMethod.GET)
	public String updateCustomer(@RequestParam  String id, Model model){
		KhachHangEntity kh= khahh.findId(id);
		model.addAttribute("customer", kh);
		return "editcustomer";
	}
	
	@RequestMapping(value="/editcustomer",method=RequestMethod.POST)
	public String editcustome(@RequestParam String id, @ModelAttribute("customer") KhachHangEntity khachHangEntity,Model model){
		khahh.update(khachHangEntity);
		List<KhachHangEntity> list= khahh.getAll();
		model.addAttribute("listcust", list);
		return "redirect:/customer";
	}
	
	@RequestMapping(value="/admin")
	public String sanpham(Model model){
		List<SanPhamEntity> list=  sanPhamEntityManager.getAllSanPham();
		model.addAttribute("Lproduct",list);
		return "admin";
	}
	
	
	@RequestMapping(value="/orderpage")
	public String oderpage(){
		return "orderpage";
	}
	@RequestMapping(value="/listproduct")
	public String listproduct(){
		return "listproduct";
	}
	
	@RequestMapping(value="/editProduct",method=RequestMethod.GET)
	public String editProduct(@RequestParam String id,Model model){
		SanPhamEntity sp=sanPhamEntityManager.findById(id);
		model.addAttribute("product", sp);
		return "editproduct";
	}
	@RequestMapping(value="/editProduct",method=RequestMethod.POST)
	public String editedProduct(@ModelAttribute("product") SanPhamEntity product){
		sanPhamEntityManager.update(product);
		return "redirect:/admin";
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.GET)
	public String addproduct(Model model){
		SanPhamEntity product= new SanPhamEntity();
		model.addAttribute("product", product);
		return "addnewproduct";
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public String addedProduct(Model model,@ModelAttribute("product") SanPhamEntity product){
		sanPhamEntityManager.save(product);
		return "redirect:/admin";
	}
	@RequestMapping(value="deleteproduct")
	public String delete(@RequestParam String id, Model model){
		if(sanPhamEntityManager.findById(id)!=null){
			sanPhamEntityManager.delete(id);
		}
		return "redirect:/admin";
	}
	@RequestMapping(value="getAllsupply")
	public String allsupply(Model model){
		
		return "";
	}
	

}
