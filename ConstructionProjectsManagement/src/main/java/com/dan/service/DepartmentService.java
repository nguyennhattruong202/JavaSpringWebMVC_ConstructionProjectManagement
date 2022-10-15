/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Department;
import java.util.List;

public interface DepartmentService {

    List<Department> getDepartment();

    boolean updateDepartment(Department department);

    boolean addDepartment(Department department);

    Department findDepartmentById(int departmentId);
}
