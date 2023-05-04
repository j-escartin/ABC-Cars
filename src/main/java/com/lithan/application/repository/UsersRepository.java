package com.lithan.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lithan.application.model.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Long>{
	
	@Query(value ="SELECT * FROM car_user ORDER BY user_id DESC LIMIT 1", nativeQuery = true)
	public Users getLastRecordId();
	
	public Users findByUsername(String username);
	
	@Query(value = "SELECT * FROM car_user WHERE email = :email", nativeQuery = true)
	public Users findByEmail(@Param("email") String email);
	

}
