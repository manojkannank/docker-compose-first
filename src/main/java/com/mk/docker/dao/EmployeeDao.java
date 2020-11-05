package com.mk.docker.dao;


import java.util.List;

import com.mk.docker.model.Employee;


public interface EmployeeDao {
	List<Employee> getAllEmployees();
	
	void insertEmployee(Employee employee);
}