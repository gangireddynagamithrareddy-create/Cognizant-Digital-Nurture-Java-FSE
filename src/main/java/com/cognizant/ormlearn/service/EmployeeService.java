package com.cognizant.ormlearn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.ormlearn.model.Employee;
import com.cognizant.ormlearn.repository.EmployeeRepository;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Transactional
    public Employee get(int id) {

        Employee employee = employeeRepository.findById(id).get();

        // Initialize the skill list while the transaction is active
        employee.getSkillList().size();

        return employee;
    }

    @Transactional
    public Employee save(Employee employee) {
        return employeeRepository.save(employee);
    }
}