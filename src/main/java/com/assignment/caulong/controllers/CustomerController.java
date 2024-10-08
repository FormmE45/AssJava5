package com.assignment.caulong.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment.caulong.models.Customer;
import com.assignment.caulong.repository.CustomerRepository;

//@RestController

@Controller
public class CustomerController {
	private final CustomerRepository cusRepository;

	public CustomerController(CustomerRepository cusRepository) {
		super();
		this.cusRepository = cusRepository;
	}
	
	@GetMapping("/giohang")
	public String gioHang() {
		return "giohang";
	}
	
	@GetMapping("/nhanvien/quanlysan")
	public String quanlysan() {
		return "/nhanvien/quanlysan";
	}
	
	@GetMapping("/nhanvien/quanlydatsan")
	public String quanlydatsan() {
		return "/nhanvien/quanlydatsan";
	}
	
	@GetMapping("/nhanvien/quanlynhanvien")
	public String quanlynhanvien() {
		return "/nhanvien/quanlynhanvien";
	}
	
	@GetMapping("/thongtin")
	public String thongtin() {
		return "/thongtincanhan";
	}

	@GetMapping("/customer/{id}")
	public String getCustomerById(@PathVariable int id, Model model) {
		Customer cus = cusRepository.findById(id).orElse(null);
		if (cus == null) {
			return "errorNotFound";
		}
		model.addAttribute("customer", cus);
		return "/KhachHang/ChiTietKhachHang";
	}

	@GetMapping("/customers")
	public String getAllCustomer(Model model) {
		List<Customer> customers = cusRepository.findAll();
		model.addAttribute("customers", customers);
		return "customers";
	}

	@GetMapping("/customer/edit/{id}")
	public String initCustomerCreateForm(@PathVariable int id,Model model,@ModelAttribute() Customer customer) {
		cusRepository.save(customer);
		return "/KhachHang/ChiTietKhachHang";
	}

	@PostMapping("/customer/create")
	public String createCustomer(@ModelAttribute Customer customer) {
		cusRepository.save(customer);
		return "/KhachHang/ChiTietKhachHang";
	}

	
	@GetMapping("/customer/Login")
	public String Login(Model model)
	{
		Customer cus=new Customer();
		model.addAttribute("user",cus);
		return "DangNhap";
	}

	@PostMapping("/customer/Login")
	public String PostLogin(Model model) {
		Customer cus = new Customer();
		model.addAttribute("user", cus);
		return "DangNhap";
	}

}
// REST API
//	@GetMapping("/customer/{id}")
//	public Customer findCustomerById(@PathVariable Integer id) {
//		return cusRepository.findById(id).orElse(null);
//	}
//	@GetMapping("/customers")
//	public List<Customer> findAllCustomerById() {
//		return cusRepository.findAll();
//	}
//	@PostMapping("/customer/create")
//	public Customer createCus(@RequestBody Customer cus) {
//		return cusRepository.save(cus);
//	}
