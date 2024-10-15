package com.assignment.caulong.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.models.Product;
import com.assignment.caulong.repository.BadmintonCourtRepository;
import com.assignment.caulong.repository.ProductRepository;

import jakarta.websocket.server.PathParam;

import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class IndexController {
	@Autowired
	BadmintonCourtRepository badmintonRepo;
	
	@Autowired
	ProductRepository prodRep;
	
	@GetMapping("/")
	public String getWebSite(Model model)
	{
		List<BadmintonCourt> cacSan=badmintonRepo.findAll();
		System.out.println("Số lượng: "+cacSan.size());
		model.addAttribute("cacsancau", cacSan);
		List<Product> cacSanPham=prodRep.findAll();
		model.addAttribute("cacSanPham", cacSanPham);
		return "index";
	}
	
	@RequestMapping("/SortByAddress")
	public String getMethodName(@RequestParam("timKhuVuc") String address,Model model) {
		List<BadmintonCourt> cacSan=badmintonRepo.findByAddressContaining(address);
		System.out.println(address);
		model.addAttribute("cacsancau", cacSan);
		List<Product> cacSanPham=prodRep.findAll();
		model.addAttribute("cacSanPham", cacSanPham);
		return "index";
	}
	
}
