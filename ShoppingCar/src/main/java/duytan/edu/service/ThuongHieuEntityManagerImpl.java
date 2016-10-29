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
	
	
}
