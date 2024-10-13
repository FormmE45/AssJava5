package com.assignment.caulong.models;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;

@Entity
@Table(name = "SanCau")
public class BadmintonCourt {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaSan")
	private int id;
	@Column(name = "TenSan")
	@NotEmpty(message = "Tên không được để trống")
	private String name;
	@Column(name = "LoaiSan", columnDefinition = "nvarchar")
	private String type;
	@Column(name = "GiaSan")
	@Min(value = 1, message = "Giá phải trên 0")
	private double price;
	@Column(name = "MoTa")
	@NotEmpty(message = "Mô tả không được để trống")
	private String description;
	@Column(name = "DiaChi")
	@NotEmpty(message = "Địa chỉ không được để trống")
	private String address;
	@Column(name = "TrangThai")
	private boolean availability;
	@OneToMany(mappedBy = "badmintonCourt", cascade = CascadeType.ALL)
	private List<CourtOrder> courtorders;
	@OneToMany(mappedBy = "badmintonCourt", cascade = CascadeType.ALL)
	private List<BadmintonCourtPic> badmintonCourtPics;

	public BadmintonCourt() {
		super();
	}
	
	public BadmintonCourt(int id, String name, String type, double price, String description, String address,
			boolean availability) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.price = price;
		this.description = description;
		this.address = address;
		this.availability = availability;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
	
}
