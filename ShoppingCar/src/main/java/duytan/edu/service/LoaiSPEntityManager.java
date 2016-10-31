package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.LoaiSPEntity;
import duytan.edu.entity.SanPhamEntity;

public interface LoaiSPEntityManager {
	public List<LoaiSPEntity> getAllLoaiSP();

	public LoaiSPEntity findById(String idloaisp);
}
