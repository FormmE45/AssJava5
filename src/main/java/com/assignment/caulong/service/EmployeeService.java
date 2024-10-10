package com.assignment.caulong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.caulong.models.Employee;
import com.assignment.caulong.repository.EmployeeRepository;

@Service
public class EmployeeService {
	private EmployeeRepository empRepo;
	
	@Autowired
	public EmployeeService(EmployeeRepository empRepo)
	{
		super();
		this.empRepo=empRepo;
	}
	
	public Employee getByUserName(String userName)
	{
		return empRepo.findByUsername(userName);
	}
	
	public Employee save(Employee emp)
	{
		return empRepo.save(emp);
	}
}
