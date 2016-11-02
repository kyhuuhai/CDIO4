package duytan.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import duytan.edu.entity.CTHoaDonEntity;

public interface CTHoaDonEntityRepository extends JpaRepository<CTHoaDonEntity,String>{
	
	@Modifying
	@Transactional
	@Query("Update CTHoaDonEntity c SET c.soluong = c.soluong + 1 where c.sanPham.id = :idproduct ")
	void updateSoluong(@Param("idproduct") String idproduct);
	
	@Modifying
	@Transactional
	@Query("Delete from CTHoaDonEntity c where c.sanPham.id = :idproduct ")
	void deleteByIDSANPHAM(@Param("idproduct") String idproduct);
}
