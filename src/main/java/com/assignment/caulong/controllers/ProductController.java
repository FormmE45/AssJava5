package com.assignment.caulong.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.assignment.caulong.models.Product;
import com.assignment.caulong.repository.ProductRepository;

@Controller
public class ProductController {

	ProductRepository prodRepo;
	
	@GetMapping("/productList")
	public String getMethodName(Model model) 
	{
		List<Product> products=prodRepo.findAll();
		model.addAttribute("", products);
		
		return "DanhSachSanPham";
	}
	
}
