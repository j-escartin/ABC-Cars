package com.lithan.application.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_role")
public class UserRoles {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_role_id")
	private Long userRoleId;
	
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "role_id")
	private String roleId;

	/**
	 * 
	 */
	public UserRoles() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param userRoleId
	 * @param userId
	 * @param roleId
	 */
	public UserRoles(Long userRoleId, String userId, String roleId) {
		super();
		this.userRoleId = userRoleId;
		this.userId = userId;
		this.roleId = roleId;
	}

	public Long getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(Long userRoleId) {
		this.userRoleId = userRoleId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "UserRoles [userRoleId=" + userRoleId + ", userId=" + userId + ", roleId=" + roleId + "]";
	}
	
	
	
	

}
