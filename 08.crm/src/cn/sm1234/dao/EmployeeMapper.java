package cn.sm1234.dao;

import java.util.List;


import cn.sm1234.domain.Employee;

public interface EmployeeMapper {

	List<Employee> selectAll(Employee emp);

	Integer selectCount();

	Integer addEmp(Employee emp);

	Integer deleteEmp(int user_id);

	Integer updateEmp(Employee emp);
}
