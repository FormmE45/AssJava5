package com.assignment.caulong.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="AnhSan")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BadmintonCourtPic {
	
	@Id
	@Column(name="MaSan")
	private Integer id;
	
	@Id
	@Column(name="LinkAnh")
	private String linkAnh;
	
	@ManyToOne
	@JoinColumn(name="MaSan", referencedColumnName = "MaSan")
	private BadmintonCourt badmintonCourt;
}
