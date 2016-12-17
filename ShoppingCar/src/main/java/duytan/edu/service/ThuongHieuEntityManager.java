package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.SanPhamEntity;
import duytan.edu.entity.ThuongHieuEntity;

public interface ThuongHieuEntityManager {
	public List<ThuongHieuEntity> getAllThuongHieu();
	public ThuongHieuEntity findById(String id);
	public void delete(String id);
	public ThuongHieuEntity save(ThuongHieuEntity thuonghieu);
	ThuongHieuEntity update(ThuongHieuEntity thuonghieu);
}
