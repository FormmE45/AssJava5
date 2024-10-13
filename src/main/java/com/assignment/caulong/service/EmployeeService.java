package com.assignment.caulong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.assignment.caulong.models.Employee;
import com.assignment.caulong.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	private EmployeeRepository empRepo;

	@Autowired
	public EmployeeService(EmployeeRepository empRepo) {
		super();
		this.empRepo = empRepo;
	}

	public Employee getByUserName(String userName) {
		return empRepo.findByUsername(userName);
	}

	public Employee save(Employee emp) {
		return empRepo.save(emp);
	}
	
	public Page<Employee> findAll(int pageNumber) {
		Sort sort = Sort.by(Sort.Direction.ASC, "id");
		Pageable pageable = PageRequest.of(pageNumber, 10, sort);
		return empRepo.findAll(pageable);
	}
}
