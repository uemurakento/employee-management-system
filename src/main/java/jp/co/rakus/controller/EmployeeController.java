package jp.co.rakus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.domain.Employee;
import jp.co.rakus.repository.EmployeeRepository;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeRepository repository;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Employee> employees = repository.findAll();
		model.addAttribute("employees", employees);
		return "employee/list";
	}
	
	@RequestMapping("/employeeinfo")
	public String employeeInformation(Model model,String id) {
		Employee employee = repository.load(Integer.valueOf(id));
		model.addAttribute("employee",employee);
		return "employee/detail";
	}
}
