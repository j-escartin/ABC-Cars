package com.lithan.application.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name= "roles")
public class Roles {
	
	@Id
	@GeneratedValue (strategy= GenerationType.IDENTITY)
	@Column(name = "role_id")
	private Long role_id;
	
	@Column(name = "role")
	private String role;

	/**
	 * 
	 */
	public Roles() {
		// TODO Auto-generated constructor stub
	}
	
	

	/**
	 * @param role_id
	 * @param role
	 */
	public Roles(Long role_id, String role) {
		super();
		this.role_id = role_id;
		this.role = role;
	}



	/**
	 * @return the role_id
	 */
	public Long getRole_id() {
		return role_id;
	}

	/**
	 * @param role_id the role_id to set
	 */
	public void setRole_id(Long role_id) {
		this.role_id = role_id;
	}

	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Roles [role_id=" + role_id + ", role=" + role + "]";
	}
	
	
	

}
