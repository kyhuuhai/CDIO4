package duytan.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import duytan.edu.entity.EmployeeEntity;

public interface EmployeeRepository extends JpaRepository<EmployeeEntity,String>{

}
