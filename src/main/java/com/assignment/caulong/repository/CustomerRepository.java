package com.assignment.caulong.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.assignment.caulong.models.Customer;
import java.util.List;


@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> 
{
	Customer findByUsername(String username);
	
}
