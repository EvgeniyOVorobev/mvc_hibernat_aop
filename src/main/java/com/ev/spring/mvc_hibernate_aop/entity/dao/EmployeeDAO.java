package com.ev.spring.mvc_hibernate_aop.entity.dao;

import com.ev.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

   public Employee getEmployees(int id);

   public void deleteEmployee(int id);
}
