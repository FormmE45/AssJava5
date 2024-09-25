package com.assignment.caulong.models;

import java.sql.Time;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "")
public class CourtOrder {
	private int customerId;
	private int courtId;
	private Date date;
	private Time start;
	private Time end;
	private String status;
	private int courtOrderId;

	
	public CourtOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CourtOrder(int customerId, int courtId, Date date, Time start, Time end, String status, int courtOrderId) {
		super();
		this.customerId = customerId;
		this.courtId = courtId;
		this.date = date;
		this.start = start;
		this.end = end;
		this.status = status;
		this.courtOrderId = courtOrderId;
	}

	public int getCourtOrderId() {
		return courtOrderId;
	}

	public void setCourtOrderId(int courtOrderId) {
		this.courtOrderId = courtOrderId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getCourtId() {
		return courtId;
	}

	public void setCourtId(int courtId) {
		this.courtId = courtId;
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
