package com.assignment.caulong.models;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

@Entity
@Table(name="GioHang")
public class Cart {
	@EmbeddedId
	private CartId cartId;
	@ManyToOne
	@MapsId("accountId")
	@JoinColumn(name="account_id")
	private Customer customer;
	@ManyToOne
	@MapsId("productId")
	@JoinColumn(name="")
	private Product product;
	private int quantity;
	
	
	
}
