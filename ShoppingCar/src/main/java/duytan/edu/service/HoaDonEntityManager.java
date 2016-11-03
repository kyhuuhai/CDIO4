package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.HoadonEntity;

public interface HoaDonEntityManager {
	List<HoadonEntity> getAll();
	HoadonEntity save(HoadonEntity entity);
	List<HoadonEntity> findByUserEntityUsername(String username);
}
