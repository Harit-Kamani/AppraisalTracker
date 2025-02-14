package com.grownited.service;

import com.grownited.entity.EmployeeEntity;
import java.util.List;

public interface EmployeeService {
    List<EmployeeEntity> getAllEmployees();
    EmployeeEntity getEmployeeById(Long id);
    EmployeeEntity createEmployee(EmployeeEntity employee);
    EmployeeEntity updateEmployee(Long id, EmployeeEntity employee);
    void deleteEmployee(Long id);
}
