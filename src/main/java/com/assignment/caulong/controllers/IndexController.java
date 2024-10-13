package com.assignment.caulong.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.repository.BadmintonCourtRepository;

@Controller
public class IndexController {
	@Autowired
	BadmintonCourtRepository badmintonRepo;
	
	@GetMapping("/")
	public String getWebSite(Model model)
	{
		List<BadmintonCourt> cacSan=badmintonRepo.findAll();
		System.out.println("Số lượng: "+cacSan.size());
		model.addAttribute("cacsancau", cacSan);
		return "index";
	}
}
