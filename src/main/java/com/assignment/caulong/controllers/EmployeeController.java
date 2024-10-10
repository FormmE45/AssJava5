package com.assignment.caulong.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.assignment.caulong.models.Employee;
import com.assignment.caulong.repository.EmployeeRepository;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeRepository empRepo;
	
	@GetMapping("/employee/{id}")
	public String getEmployee(Model model,@PathVariable("id") Optional<String> id)
	{
		Employee employee=empRepo.findById(id.orElse(null)).orElse(new Employee());
		model.addAttribute("employee", employee);
		
		return "chitietnhanvien";
	}
	
	@GetMapping("/employee/remove/{id}")
	public String removeEmployee(Model model,@PathVariable("id") Optional<String> id)
	{
		if(!id.isEmpty())
		{
			Employee employee=empRepo.findById(id.orElse(null)).orElse(null);
			if(employee!=null)
			{
				empRepo.delete(employee);
				model.addAttribute("message", "Xóa nhân viên thành công");
			}
			else
			{
				model.addAttribute("message", "Xóa nhân viên Thất Bại");
			}
		}
		else
		{
			model.addAttribute("message", "Xóa nhân viên Thất Bại");
		}
		return "quanlynhanvien";
	}
	
	@GetMapping("/employeeManager/{id}")
	public String getAllEmployee(@PathVariable("id") Optional<String> id,Model model)
	{
		
		List<Employee> employeeList=empRepo.findAll();
		if(!id.isEmpty())
		{
			Employee employee=empRepo.findById(id.get()).orElse(null);
			model.addAttribute("nhanVien",employee);
			System.out.println(id.get());
		}
		else
		{
			Employee employee=new Employee();
			model.addAttribute("nhanVien",employee);
		}
		System.out.println(employeeList.size()); // Xem kích thước danh sách
		model.addAttribute("nhanViens",employeeList);
		return "/nhanvien/quanlynhanvien";
		
	}
	
	@GetMapping("/employeeManager")
	public String getAllEmployees(Model model) {
		Employee employee=new Employee();
		model.addAttribute("nhanVien",employee);
	    List<Employee> employeeList = empRepo.findAll();
	    model.addAttribute("nhanViens", employeeList);
	    return "/nhanvien/quanlynhanvien";
	}

	@RequestMapping("/employeeUpdate")
	public String getUpdateEmployee(Model model,@ModelAttribute() Employee employee)
	{
		empRepo.save(employee);
		return "redirect:/employeeManager";
	}
	
	@GetMapping("/employeeAdd")
	public String getMethodName(Model model) {
		Employee employee=new Employee();
		
		model.addAttribute("employee", employee);
		
		return "/nhanvien/ThemNhanVien";
	}
	
	
}
