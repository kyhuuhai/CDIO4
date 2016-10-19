package duytan.edu.service;

import duytan.edu.entity.UserEntity;

public interface UserEntityManager {

	UserEntity getUserByUserName(String UserName);
	void saveUser(UserEntity user);
}
