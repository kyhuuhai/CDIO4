package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import duytan.edu.entity.KhachHangEntity;
import duytan.edu.repository.KhachHangRepository;

@Service
public class KhachHangEntityManagelmpl implements KhachHangEntityManager {

	@Autowired
	KhachHangRepository khachhangRe; 
	
	@Transactional
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

	@Override
	public KhachHangEntity update(KhachHangEntity khachHangEntity) {
		// TODO Auto-generated method stub
		return khachhangRe.save(khachHangEntity);
	}
	

}
