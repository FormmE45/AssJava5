package com.assignment.caulong.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.assignment.caulong.models.BadmintonCourt;

public interface BadmintonCourtRepository extends JpaRepository<BadmintonCourt, Integer> {
	
}
