package com.assignment.caulong.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.models.Customer;
import com.assignment.caulong.models.User;
import com.assignment.caulong.service.LoginService;


@Controller
public class LoginController {
	private LoginService loginService;
	
	
	@Autowired
	public LoginController(LoginService loginService) {
		super();
		this.loginService = loginService;
	}

	@GetMapping("/")
	public String getWebSite(Model model)
	{
		
		return "index";
	}
	
	@GetMapping("/login")
	public String getLogin(Model model)
	{
		User user=new User();
		model.addAttribute("user", user);
		return "DangNhap";
	}
	
	@GetMapping("/SignUp")
	public String getSignUp(Model model)
	{
		Customer cus=new Customer();
		
		model.addAttribute("customer", cus);
		return "DangKy";
	}
	
	@GetMapping("/productDetail/{id}")
	public String GetInformation(@PathVariable int id,Model model)
	{
		BadmintonCourt sanCau=new BadmintonCourt();
		//Câu lệnh lấy sân có id tương ứng
		
		
		model.addAttribute("san",sanCau);
		return "ChiTietSan";
	}
	
	@PostMapping("/login") 
	public String GetLogin(Model model,@ModelAttribute() User user) 
	{
		
		if(loginService.CheckLogin(user.getUsername(), user.getPassword()))
		{
			
			return "redirect:/";
		}
		else
		{
			model.addAttribute("Message", "Login failed, there is an error during the login process");
			return "redirect:/login";
		}
		
	}
	
	@PostMapping("/GetSignUp")
	public String GetSignUp(@ModelAttribute("customer") Customer cus,Model model)
	{
		

		if(true)
		{
			return "redirect:/";
		}
		else
		{
			model.addAttribute("Message", "Sign up failed, there is an error during registration ");
			return "redirect:/SignUp";
		}
	}
	
}
