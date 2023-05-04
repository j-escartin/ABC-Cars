package com.lithan.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lithan.application.model.UserRoles;

@Repository
public interface UserRolesRepository extends JpaRepository<UserRoles, Long>{
	
	@Query(value = "SELECT * FORM user_role WHERE user_id = :userId)", nativeQuery=true)
	public UserRoles findByUserId(@Param("userId")String userId);

}
