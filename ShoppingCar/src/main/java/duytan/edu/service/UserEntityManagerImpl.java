package duytan.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import duytan.edu.entity.UserEntity;
import duytan.edu.repository.UserEntityRepository;
@Service
public class UserEntityManagerImpl implements UserEntityManager{

	@Autowired
	UserEntityRepository userRepository;
	
	@Override
	public void saveUser(UserEntity user) {
		 BCryptPasswordEncoder passEncode = new BCryptPasswordEncoder();
		 user.setPassword(passEncode.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public UserEntity getUserByUserName(String UserName) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(UserName);
	}

	@Override
	public UserEntity findByname(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(username);
	}

}
