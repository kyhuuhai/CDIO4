package duytan.edu.service;

import java.util.List;

import duytan.edu.entity.EmployeeEntity;

public interface EmployeeEntityManager {
	List<EmployeeEntity> findAll();
}
