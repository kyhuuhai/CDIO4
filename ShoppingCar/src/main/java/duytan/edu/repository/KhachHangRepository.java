package duytan.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import duytan.edu.entity.KhachHangEntity;

public interface KhachHangRepository extends JpaRepository<KhachHangEntity, String> {

	KhachHangEntity findByname(String name);

}
