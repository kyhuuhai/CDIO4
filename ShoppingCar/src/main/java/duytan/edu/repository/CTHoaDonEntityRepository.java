package duytan.edu.repository;

import java.util.List;

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
	@Query("DELETE FROM CTHoaDonEntity c WHERE c.id = :idcart ")
	void deleteByIDSANPHAM(@Param("idcart") String idcart);
	
	List<CTHoaDonEntity> findByHoaDonUserEntityUsername( String username);
}
