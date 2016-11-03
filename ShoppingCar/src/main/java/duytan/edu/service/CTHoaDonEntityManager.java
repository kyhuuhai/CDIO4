package duytan.edu.service;

import java.util.List;


import duytan.edu.entity.CTHoaDonEntity;

public interface CTHoaDonEntityManager {
	List<CTHoaDonEntity> getAll();
	void UpdateSoLuong(String idproduct);
	void Save(CTHoaDonEntity entity);
	void deleteByIDSANPHAM(String idproduct);
	List<CTHoaDonEntity> findByHoaDonUserEntityUsername( String username);
}
