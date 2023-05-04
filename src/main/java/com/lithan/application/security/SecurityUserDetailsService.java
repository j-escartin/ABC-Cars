package com.lithan.application.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.lithan.application.model.Users;
import com.lithan.application.repository.UsersRepository;

@Component
public class SecurityUserDetailsService implements UserDetailsService {
	
	@Autowired
	UsersRepository usersRepo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Users user = usersRepo.findByUsername(username);
		
		if(user == null) {
			throw new UsernameNotFoundException("User not Found");
		}
		return new SecurityUserDetails(user);
	}

}
