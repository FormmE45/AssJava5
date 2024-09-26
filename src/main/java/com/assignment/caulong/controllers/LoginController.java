package com.assignment.caulong.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.models.Customer;
import com.assignment.caulong.models.User;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String getWebSite()
	{
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String getLogin(Model model)
	{
		User user=new User();
		model.addAttribute("user", user);
		return "DangNhap";
	}
	
	@RequestMapping("/SignUp")
	public String getSignUp(Model model)
	{
		Customer cus=new Customer();
		
		model.addAttribute("customer", cus);
		return "DangKy";
	}
	
	@RequestMapping("/productDetail/{id}")
	public String GeInformation(@PathVariable int id,Model model)
	{
		BadmintonCourt sanCau=new BadmintonCourt();
		//Câu lệnh lấy sân có id tương ứng
		
		
		model.addAttribute("san",sanCau);
		return "ChiTietSan";
	}
	
	@PostMapping("/GetLogin")
	public String GetLogin(Model model,@ModelAttribute("user") User user) 
	{
		
		
		if(true)
		{
			return "redirect:/";
		}
		else
		{
			model.addAttribute("Message", "Login failed, there is an error during the login process ");
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
