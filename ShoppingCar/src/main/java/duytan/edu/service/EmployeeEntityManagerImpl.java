package duytan.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duytan.edu.entity.EmployeeEntity;
import duytan.edu.repository.EmployeeRepository;

@Service
public class EmployeeEntityManagerImpl implements EmployeeEntityManager{

	@Autowired
	EmployeeRepository emp;
	
	@Override
	public List<EmployeeEntity> findAll() {
		// TODO Auto-generated method stub
		return emp.findAll();
	}

}
