package com.lithan.application.service;

import java.util.List;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.application.model.Roles;
import com.lithan.application.repository.RoleRepository;


@Service
@Transactional
public class RolesService {
	
	@Autowired
	RoleRepository roleRepo;
	
	public List<Roles> getAllRecords(){
		return roleRepo.findAll();
	}

}
