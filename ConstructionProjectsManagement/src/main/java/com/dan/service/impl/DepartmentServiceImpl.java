/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Department;
import com.dan.repository.DepartmentRepository;
import com.dan.service.DepartmentService;
import java.util.List;
import java.util.Map;
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
    public Department add(Department department) {
        return this.departmentRepository.add(department);
    }

    @Override
    public Department findDepartmentById(int departmentId) {
        return this.departmentRepository.findDepartmentById(departmentId);
    }

    @Override
    public Map<String, String> getMapDepartment() {
        return this.departmentRepository.getMapDepartment();
    }

    @Override
    public void removed(int id) {
        this.departmentRepository.removed(id);
    }

    @Override
    public List<Department> getDepartmentWithKey(String keyword) {
        return this.departmentRepository.getDepartmentWithKey(keyword);
    }
}
