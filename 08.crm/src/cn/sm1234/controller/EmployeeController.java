package cn.sm1234.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sm1234.domain.Employee;
import cn.sm1234.domain.Fenye;
import cn.sm1234.service.EmployeeService;

@Controller
@RequestMapping("/emp")
public class EmployeeController {
	
	

	@Autowired
	private EmployeeService empService;
	

	
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public Fenye selectEmp(Employee emp) {
		System.out.println(emp);
		return empService.selectAll(emp);
	}

	@RequestMapping("/addEmp")
	@ResponseBody
	public int addEmp(Employee emp) {
		System.out.println(emp);
		return empService.addEmp(emp);
		
	}
	@RequestMapping("/updateEmp")
	@ResponseBody
	public int updateEmp(Employee emp) {
		return empService.updateEmp(emp);
		
	}
	@RequestMapping("/deleteEmp")
	@ResponseBody
	public int deleteEmp(int user_id) {
		return empService.deleteEmp(user_id);
	}
}
