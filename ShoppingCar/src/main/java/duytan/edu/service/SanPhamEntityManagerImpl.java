package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.SanPhamEntity;
import duytan.edu.repository.SanPhamEntityRepository;

@Service
public class SanPhamEntityManagerImpl implements SanPhamEntityManager{
	
	@Autowired
	SanPhamEntityRepository entityRepository;

	@Override
	public List<SanPhamEntity> getAllSanPham() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}

	@Override
	public SanPhamEntity findById(String id) {
		// TODO Auto-generated method stub
		return entityRepository.findOne(id);
	}

	@Override
	public List<SanPhamEntity> findByName(String name) {
		// TODO Auto-generated method stub
		return entityRepository.findByNameContaining(name);
	}

	@Override
	public void delete(String id) {
		entityRepository.delete(id);
	}

	@Override
	public SanPhamEntity save(SanPhamEntity sanpham) {
		if(sanpham == null){
			return null;
		}
		entityRepository.save(sanpham);
		return sanpham;
	}
	
	
	
}
