package com.lithan.application.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinTable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name ="car_user")
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Long user_id;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;
	
	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name="role_id"))
	private List <Roles> roles = new ArrayList<>();
	
	
	/**
	 * 
	 */
	public Users() {
		// TODO Auto-generated constructor stub
	}


	/**
	 * @param user_id
	 * @param username
	 * @param email
	 * @param password
	 * @param roles
	 */
	public Users(Long user_id, String username, String email, String password, List<Roles> roles) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.roles = roles;
	}


	public Long getUser_id() {
		return user_id;
	}


	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public List<Roles> getRoles() {
		return roles;
	}


	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}


	@Override
	public String toString() {
		return "Users [user_id=" + user_id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", roles=" + roles + "]";
	}
	
	

	
	
	
}
