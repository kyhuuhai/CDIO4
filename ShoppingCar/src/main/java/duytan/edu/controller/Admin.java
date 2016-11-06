package duytan.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import duytan.edu.entity.KhachHangEntity;
import duytan.edu.service.HoaDonEntityManager;
import duytan.edu.service.KhachHangEntityManager;
import duytan.edu.service.SanPhamEntityManager;
import duytan.edu.service.ThuongHieuEntityManager;

public class Admin {
	@Autowired
	KhachHangEntityManager khachHangEntityManager;
	
	@Autowired
	SanPhamEntityManager sanPhamEntityManager;
	
	@Autowired
	HoaDonEntityManager hoaDonEntityManager;
	
	@Autowired 
	ThuongHieuEntityManager thuongHieuEntityManager;
	
	@RequestMapping(value="/admin")
	public String admin(){
		
	return "admin";
	}
	@RequestMapping(value="/danhsach")
	public String danhsach(Model model){
		List<KhachHangEntity> danhsach =khachHangEntityManager.getAll();
		model.addAttribute("danhsach",danhsach);
		return "danhsachKH";
		
	}
	@RequestMapping(value="/delete")
	public String deleteKH(@RequestParam int idkhachhang,Model model){
		if(khachHangEntityManager.findId(idkhachhang)!=null){
		   khachHangEntityManager.delete(idkhachhang);
		}else{
			model.addAttribute("masea","khong the xoa");
		}
		return"";
		
	}

}
