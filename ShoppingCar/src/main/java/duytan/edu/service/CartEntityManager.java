package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.CartEntity;

public interface CartEntityManager {
	List<CartEntity> getAll();
	void UpdateSoLuong(String idproduct);
	void Save(CartEntity entity);
	void deleteByIDSANPHAM(String idproduct);
	List<CartEntity> findByUserName(String username);
}
