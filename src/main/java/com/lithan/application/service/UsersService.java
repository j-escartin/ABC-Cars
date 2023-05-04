package com.lithan.application.service;

import java.util.List;
import java.util.Optional;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.application.model.UserRoles;
import com.lithan.application.model.Users;
import com.lithan.application.repository.UserRolesRepository;
import com.lithan.application.repository.UsersRepository;

@Service
@Transactional
public class UsersService {
	
	@Autowired
	UsersRepository usersRepo;
	
	@Autowired
	UserRolesRepository usersRoleRepo;
	
	public void saveUser(Users user) {
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setEmail(user.getEmail());
		usersRepo.save(user);
	}
	
	public void saveCommonUser(Long id) {
		UserRoles userRoles = new UserRoles();
		userRoles.setUserId(String.valueOf(id));
		userRoles.setRoleId("1");
		usersRoleRepo.save(userRoles);
	}
	
	public Long getUserId() {
		return usersRepo.getLastRecordId().getUser_id();
	}
	
	public Users getRecordByUsername(String username) {
		return usersRepo.findByUsername(username);
	}
	
	public Optional<Users> getRecordByUserId(Long id){
		return usersRepo.findById(id);
	}
	
	public List<Users> getAllRecords(){
		return usersRepo.findAll();
	}
	
	public Users getRecordByEmail(String email) {
		return usersRepo.findByEmail(email);
	}
	
	public void deleteRecordById(Long id) {
		usersRepo.deleteById(id);
	}
	
	public void updateUser(Users user) {
		user.setUser_id(user.getUser_id());
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setEmail(user.getEmail());
		usersRepo.save(user);
	}
}
