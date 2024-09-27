package com.assignment.caulong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.caulong.models.Customer;
@Service
public class LoginService {
	private CustomerService cusService;
	
	@Autowired
	public LoginService(CustomerService cusService) {
		super();
		this.cusService = cusService;
	}

	public Boolean CheckLogin(String userName,String password)
	{
		Boolean checkKhachHang=false;
		Customer cus=cusService.getByUsername(userName);
		if(cus!=null) {
			if(password.equals(cus.getPassword())){
				checkKhachHang=true;
			}
		}
		return checkKhachHang;
	}
}
