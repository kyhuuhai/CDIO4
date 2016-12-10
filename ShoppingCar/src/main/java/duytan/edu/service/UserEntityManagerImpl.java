package duytan.edu.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import duytan.edu.entity.RoleEntity;
import duytan.edu.entity.UserEntity;
import duytan.edu.repository.RoleEntityRepository;
import duytan.edu.repository.UserEntityRepository;
@Service
public class UserEntityManagerImpl implements UserEntityManager{

	@Autowired
	UserEntityRepository userRepository;
	
	@Autowired
    RoleEntityRepository roleRepository;

	@Override
	public void saveUser(UserEntity user) {
		 BCryptPasswordEncoder passEncode = new BCryptPasswordEncoder();
		 user.setPassword(passEncode.encode(user.getPassword()));
	        Set<RoleEntity> roles= new HashSet<RoleEntity>(roleRepository.findAll());
	        Set<RoleEntity> roleUser= new HashSet<RoleEntity>();
	        for(RoleEntity role: roles){
	        	roleUser.add(role);
	        	break;
	        }
	        user.setRoles(roleUser);
	        userRepository.save(user);
	}

	@Override
	public UserEntity getUserByUserName(String UserName) {
		return userRepository.findByUsername(UserName);
	}

	@Override
	public UserEntity findByname(String username) {
		return userRepository.findByUsername(username);
	}

}
