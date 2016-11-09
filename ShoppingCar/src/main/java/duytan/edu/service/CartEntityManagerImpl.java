package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.CartEntity;
import duytan.edu.repository.CartEntityRepository;

@Service
public class CartEntityManagerImpl implements CartEntityManager{

	@Autowired
	CartEntityRepository entityRepository;
	@Override
	public List<CartEntity> getAll() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}
	@Override
	public void UpdateSoLuong(String idproduct) {
		entityRepository.updateSoluong(idproduct);
	}
	@Override
	public void Save(CartEntity entity) {
		entityRepository.save(entity);
	}
	@Override
	public void deleteByIDSANPHAM(String idproduct) {
		entityRepository.delete(idproduct);
	}
	@Override
	public List<CartEntity> findByUserName(String username) {
		// TODO Auto-generated method stub
		return entityRepository.findByUsername(username);
	}
	

}
