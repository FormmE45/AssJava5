package com.assignment.caulong.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.assignment.caulong.models.BadmintonCourt;
import com.assignment.caulong.repository.BadmintonCourtRepository;

@Controller
public class BadmintonCourtController {
	private BadmintonCourtRepository courtRepo;

	public BadmintonCourtController(BadmintonCourtRepository courtRepo) {
		super();
		this.courtRepo = courtRepo;
	}
	
//	@GetMapping("/court/{id}")
//	public String getCourtById(@PathVariable Integer id,Model model) {
//		return "
//		return courtRepo.findById(id).orElse(null);
//	}
	public List<BadmintonCourt> getAllCourt() {
		return courtRepo.findAll();
	}

}
