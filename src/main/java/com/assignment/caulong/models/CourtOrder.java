package com.assignment.caulong.models;

import java.sql.Time;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import jakarta.persistence.Table;

@Entity
@Table(name = "DatSanCau")
public class CourtOrder {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MaDatSan")
	private int courtOrderId;
	
	@ManyToOne
	@JoinColumn(name="MaKhachHang")
	@JsonIgnore
	private Customer customer;
	
	@ManyToOne
	@JoinColumn(name="MaSan")
	private BadmintonCourt badmintonCourt;
	@Column(name="NgayDat")
	private Date date;
	@Column(name="GioBatDau")
	private Time start;
	@Column(name="GioKetThuc")
	private Time end;
	@Column(name="TrangThaiDat")
	private String status;
	
	public CourtOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CourtOrder(int courtOrderId, Customer customer, BadmintonCourt badmintoncourt, Date date, Time start,
			Time end, String status) {
		super();
		this.courtOrderId = courtOrderId;
		this.customer = customer;
		this.badmintonCourt = badmintoncourt;
		this.date = date;
		this.start = start;
		this.end = end;
		this.status = status;
	}


	public int getCourtOrderId() {
		return courtOrderId;
	}

	public void setCourtOrderId(int courtOrderId) {
		this.courtOrderId = courtOrderId;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public BadmintonCourt getBadmintoncourt() {
		return badmintonCourt;
	}

	public void setBadmintoncourt(BadmintonCourt badmintoncourt) {
		this.badmintonCourt = badmintoncourt;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getStart() {
		return start;
	}

	public void setStart(Time start) {
		this.start = start;
	}

	public Time getEnd() {
		return end;
	}

	public void setEnd(Time end) {
		this.end = end;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

}
