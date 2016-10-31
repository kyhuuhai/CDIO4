package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.LoaiSPEntity;
import duytan.edu.entity.SanPhamEntity;
import duytan.edu.repository.LoaiSPEntityRepository;

@Service
public class LoaiSPEntityManagerImpl implements LoaiSPEntityManager{

	@Autowired 
	LoaiSPEntityRepository entityRepository;

	@Override
	public List<LoaiSPEntity> getAllLoaiSP() {
		// TODO Auto-generated method stub
		return entityRepository.findAll();
	}

	@Override
	public LoaiSPEntity findById(String idloaisp) {
		// TODO Auto-generated method stub
		return entityRepository.findOne(idloaisp);
	}
	
}
