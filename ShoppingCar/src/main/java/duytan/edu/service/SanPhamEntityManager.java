package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.SanPhamEntity;

public interface SanPhamEntityManager {

	public List<SanPhamEntity> getAllSanPham();
	public SanPhamEntity findById(String id);
	public List<SanPhamEntity> findByName(String name);
	public void delete(String id);
	public SanPhamEntity save(SanPhamEntity sanpham);
}
