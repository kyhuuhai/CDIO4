package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.SanPhamEntity;

public interface SanPhamEntityManager {

	public List<SanPhamEntity> getAllSanPham();
	public SanPhamEntity findById(String id);
}
