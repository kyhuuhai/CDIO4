package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.HoadonEntity;
import duytan.edu.repository.HoaDonEntityRepository;

@Service
public class HoaDonEntityManagerImpl implements HoaDonEntityManager{

	@Autowired
	HoaDonEntityRepository entityRepository;
	@Override
	public List<HoadonEntity> getAll() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}
	@Override
	public HoadonEntity save(HoadonEntity entity) {
		return entityRepository.save(entity);
	}
	@Override
	public List<HoadonEntity> findByUserEntityUsername(String username) {
		return entityRepository.findByUserEntityUsername(username);
	}
	@Override
	public void delete(String id) {
		entityRepository.delete(id);
	}

}
