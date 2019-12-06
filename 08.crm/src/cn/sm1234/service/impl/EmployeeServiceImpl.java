package cn.sm1234.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.sm1234.dao.EmployeeMapper;
import cn.sm1234.domain.Employee;
import cn.sm1234.domain.Fenye;
import cn.sm1234.service.EmployeeService;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeMapper empMapper;

	@Override
	public Fenye selectAll(Employee emp) {
		// TODO Auto-generated method stub
		Fenye fenye = new Fenye();
		System.out.println(empMapper.selectAll(emp));
		
		emp.setPage((emp.getPage()-1)*emp.getRows());
		fenye.setTotal(empMapper.selectCount());
		fenye.setRows(empMapper.selectAll(emp));
		return fenye;
	}

	@Override
	public Integer addEmp(Employee emp) {
		// TODO Auto-generated method stub
		return empMapper.addEmp(emp);
	}

	@Override
	public Integer deleteEmp(int user_id) {
		// TODO Auto-generated method stub
		return empMapper.deleteEmp(user_id);
	}

	@Override
	public Integer updateEmp(Employee emp) {
		// TODO Auto-generated method stub
		return empMapper.updateEmp(emp);
	}

}
