package com.assignment.caulong.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="")
public class Employee {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="MaKhachHang")
	private String id;
	@Column(name="")
	private String name;
	@Column(name="")
	private String role;
	@Column(name="")
	private String username;
	@Column(name="")
	private String password;
}
