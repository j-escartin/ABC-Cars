package com.lithan.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.application.model.Roles;

@Repository
public interface RoleRepository extends JpaRepository<Roles, Long>{

}
