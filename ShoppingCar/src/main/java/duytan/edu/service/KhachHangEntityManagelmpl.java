package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import duytan.edu.entity.KhachHangEntity;
import duytan.edu.repository.KhachHangRepository;

public class KhachHangEntityManagelmpl implements KhachHangEntityManager {

	@Autowired
	KhachHangRepository khachhangRe; 
	
	@Override
	public KhachHangEntity create(KhachHangEntity khachhang) {
		return khachhangRe.save(khachhang);
	}

	@Override
	public List<KhachHangEntity> getAll() {
		return khachhangRe.findAll();
	}

	@Override
	public void delete(String idkhachhang) {
		 khachhangRe.delete(idkhachhang);
	}

	@Override
	public KhachHangEntity findId(String idkhachhang) {
		return khachhangRe.findOne(idkhachhang);
	}


	@Override
	public KhachHangEntity findByUsername(String name) {
		return khachhangRe.findByname(name);
	}
	

}
