package duytan.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import duytan.edu.entity.HoadonEntity;

public interface HoaDonEntityRepository extends JpaRepository<HoadonEntity,String>{
	
	List<HoadonEntity> findByUserEntityUsername(String username);
}
