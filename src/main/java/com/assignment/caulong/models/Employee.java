package com.assignment.caulong.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="NhanVien")
public class Employee {
	@Id
	@Column(name="MaNhanVien")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;
	@Column(name="HoTen")
	private String name;
	@Column(name="ChucVu")
	private String role;
	@Column(name="Username")
	private String username;
	@Column(name="Password")
	private String password;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(String id, String name, String role, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
		this.username = username;
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
