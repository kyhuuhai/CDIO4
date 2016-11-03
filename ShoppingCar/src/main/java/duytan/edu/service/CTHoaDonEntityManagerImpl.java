package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.CTHoaDonEntity;
import duytan.edu.repository.CTHoaDonEntityRepository;

@Service
public class CTHoaDonEntityManagerImpl implements CTHoaDonEntityManager{

	@Autowired
	CTHoaDonEntityRepository entityRepository;
	@Override
	public List<CTHoaDonEntity> getAll() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}
	@Override
	public void UpdateSoLuong(String idproduct) {
		entityRepository.updateSoluong(idproduct);
	}
	@Override
	public void Save(CTHoaDonEntity entity) {
		entityRepository.save(entity);
	}
	@Override
	public void deleteByIDSANPHAM(String idproduct) {
		entityRepository.delete(idproduct);
	}
	@Override
	public List<CTHoaDonEntity> findByHoaDonUserEntityUsername(String username) {
		return entityRepository.findByHoaDonUserEntityUsername(username);
	}

}
