package com.assignment.caulong.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.assignment.caulong.models.CourtOrder;

public interface CourtOrderRepository extends JpaRepository<CourtOrder, Integer> {
	
	@Query("select co from CourtOrder co "
			+ "where co.customer.name like coalesce(:searchCustomer, co.customer.name) "
			+ "and co.badmintonCourt.name like coalesce(:searchCourt, co.badmintonCourt.name) "
			+ "and co.status = coalesce(:status, co.status) "
			+ "and hour(co.start) >= :min and hour(co.end) <= :max")
	Page<CourtOrder> findSearch(String searchCustomer, String searchCourt, String status, int min, int max, Pageable pageable);
	

}
