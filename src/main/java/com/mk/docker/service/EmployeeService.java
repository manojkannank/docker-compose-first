package com.mk.docker.service;

import java.util.List;

import com.mk.docker.model.Employee;

public interface EmployeeService {
	List<Employee> getAllEmployees();
	void insertEmployee(Employee employee);
}
