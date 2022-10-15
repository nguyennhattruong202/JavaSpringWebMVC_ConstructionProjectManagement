/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Department;
import com.dan.repository.DepartmentRepository;
import com.dan.service.DepartmentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentRepository departmentRepository;

    @Override
    public List<Department> getDepartment() {
        return this.departmentRepository.getDepartment();
    }

    @Override
    public boolean updateDepartment(Department department) {
        return this.departmentRepository.updateDepartment(department);
    }

    @Override
    public boolean addDepartment(Department department) {
        return this.departmentRepository.addDepartment(department);
    }

    @Override
    public Department findDepartmentById(int departmentId) {
        return this.departmentRepository.findDepartmentById(departmentId);
    }
}
