package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.KhachHangEntity;

public interface KhachHangEntityManager {
	KhachHangEntity create(KhachHangEntity khachhang);
	
	List<KhachHangEntity> getAll();
	public void delete(String idkhachhang);
	public KhachHangEntity findId(String idkhachhang);
	KhachHangEntity findByUsername(String username);
}
