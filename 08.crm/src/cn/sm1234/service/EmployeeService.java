package cn.sm1234.service;

import cn.sm1234.domain.Employee;
import cn.sm1234.domain.Fenye;

public interface EmployeeService {
    Fenye selectAll(Employee emp); 
	
	Integer addEmp(Employee emp);
	
	Integer deleteEmp(int user_id);
	
	Integer updateEmp(Employee emp);
}
