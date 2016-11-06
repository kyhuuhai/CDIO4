package duytan.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import duytan.edu.entity.CTHoaDonEntity;
import duytan.edu.entity.CartEntity;

public interface CartEntityRepository extends JpaRepository<CartEntity,String>{
	
	@Modifying
	@Transactional
	@Query("Update CartEntity c SET c.soluong = c.soluong + 1 where c.sanPhamEntity.id = :idproduct ")
	void updateSoluong(@Param("idproduct") String idproduct);
	
	@Modifying
	@Transactional
	@Query("DELETE FROM CartEntity c where c.sanPhamEntity.id = :idproduct ")
	void deleteByIDSANPHAM(@Param("idproduct") String idproduct);
	
	List<CartEntity> findByUsername(String username);
	
}
