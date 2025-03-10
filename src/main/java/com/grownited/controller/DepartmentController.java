package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.DepartmentEntity;
import com.grownited.repository.DepartmentRepository;

import jakarta.annotation.PostConstruct;

@Controller
public class DepartmentController {

	@Autowired
	DepartmentRepository repoDepartment;
	
	@GetMapping("adddepartment")
	public String addDepartment(Model model) {
		
		 List<DepartmentEntity> allDepartments = repoDepartment.findAll();
	        // Add the department list to the model
	        model.addAttribute("allDepartment", allDepartments);
		return "AddDepartment";
		// TODO Auto-generated constructor stub
	}
	
	@PostMapping("savedepartment")
	
	public String saveDepartment(DepartmentEntity entityDepartment) {
		
		repoDepartment.save(entityDepartment);
		return "AddDepartment";
		
		
	}
	
@GetMapping("listdepartment")
public String listDepartment(Model model) {
	List<DepartmentEntity> departmentList=repoDepartment.findAll();
	model.addAttribute("departmentList", departmentList);
	return"ListDepartment";
}
}
