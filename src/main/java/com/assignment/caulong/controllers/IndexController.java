package com.assignment.caulong.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.models.Product;
import com.assignment.caulong.repository.BadmintonCourtRepository;
import com.assignment.caulong.repository.ProductRepository;

@Controller
public class IndexController {
	@Autowired
	BadmintonCourtRepository badmintonRepo;
	
	@Autowired
	ProductRepository prodRep;
	
	@GetMapping("/")
	public String getWebSite(Model model,Principal principal)
	{
		Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
		if(authentication !=null) {
			authentication.isAuthenticated();
		}
		List<BadmintonCourt> cacSan=badmintonRepo.findAll();
		System.out.println("Số lượng: "+cacSan.size());
		model.addAttribute("cacsancau", cacSan);
		List<Product> cacSanPham=prodRep.findAll();
		model.addAttribute("cacSanPham", cacSanPham);
		if(principal!=null) {
		System.out.println(principal.getName());
		}
		return "index";
	}
}
