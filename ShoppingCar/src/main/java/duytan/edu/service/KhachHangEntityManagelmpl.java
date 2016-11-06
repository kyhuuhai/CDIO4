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
		// TODO Auto-generated method stub
		return khachhangRe.save(khachhang);
	}

	@Override
	public List<KhachHangEntity> getAll() {
		// TODO Auto-generated method stub
		return khachhangRe.findAll();
	}

	@Override
	public void delete(int idkhachhang) {
		// TODO Auto-generated method stub
		 khachhangRe.delete(idkhachhang);
	}

	@Override
	public KhachHangEntity findId(int idkhachhang) {
		// TODO Auto-generated method stub
		return khachhangRe.findOne(idkhachhang);
	}


	@Override
	public KhachHangEntity findByUsername(String name) {
		// TODO Auto-generated method stub
		return khachhangRe.findByname(name);
	}
	

}
