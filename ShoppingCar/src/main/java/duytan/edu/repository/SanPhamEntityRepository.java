package duytan.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import duytan.edu.entity.SanPhamEntity;

public interface SanPhamEntityRepository extends JpaRepository<SanPhamEntity,String>{
	List<SanPhamEntity> findByNameContaining(String name);
}
