package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.ThuongHieuEntity;
import duytan.edu.repository.ThuongHieuEntityRepository;

@Service
public class ThuongHieuEntityManagerImpl implements ThuongHieuEntityManager{

	@Autowired
	ThuongHieuEntityRepository entityRepository;
	
	@Override
	public List<ThuongHieuEntity> getAllThuongHieu() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}

	@Override
	public ThuongHieuEntity findById(String id) {
		// TODO Auto-generated method stub
		return entityRepository.findOne(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		entityRepository.delete(id);
		
	}

	@Override
	public ThuongHieuEntity save(ThuongHieuEntity thuonghieu) {
		if(thuonghieu == null){
			return null;
		}
		entityRepository.save(thuonghieu);
		return thuonghieu;
	}

	@Override
	public ThuongHieuEntity update(ThuongHieuEntity thuonghieu) {
		// TODO Auto-generated method stub
		return entityRepository.save(thuonghieu);
	}
	
	
}
