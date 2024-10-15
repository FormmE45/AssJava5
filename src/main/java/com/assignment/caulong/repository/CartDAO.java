package com.assignment.caulong.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.assignment.caulong.models.Cart;
import com.assignment.caulong.models.CartId;
import com.assignment.caulong.models.Customer;

public interface CartDAO extends JpaRepository<Cart, CartId> {
	List<Cart> findByCustomer(Customer customer);
}
