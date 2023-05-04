package com.lithan.application.service;

import java.util.List;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.application.model.UserRoles;
import com.lithan.application.repository.UserRolesRepository;

@Service
@Transactional
public class UsersRoleService {
	
	@Autowired
	UserRolesRepository userRolesRepo;
	
	public List<UserRoles> getAllRecords() {
		return userRolesRepo.findAll();
	}
	
	public UserRoles getRecordByUserId(String userId) {
		return userRolesRepo.findByUserId(userId);
	}
	
	public void save(UserRoles userRoles) {
		userRolesRepo.save(userRoles);
	}

}
