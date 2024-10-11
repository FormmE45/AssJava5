package com.assignment.caulong.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.assignment.caulong.models.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, String>{
	Employee findByUsername(String userName);
	
	
}
