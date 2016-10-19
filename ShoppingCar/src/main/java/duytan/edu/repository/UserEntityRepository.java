package duytan.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import duytan.edu.entity.UserEntity;

public interface UserEntityRepository extends JpaRepository<UserEntity,String>{

	UserEntity findByUsername(String username);
}
