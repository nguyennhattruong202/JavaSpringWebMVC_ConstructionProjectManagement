/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Department;
import java.util.List;
import java.util.Map;

public interface DepartmentRepository {

    List<Department> getDepartment();

    boolean updateDepartment(Department department);

    boolean addDepartment(Department department);

    Department findDepartmentById(int departmentId);

    Map<String, String> getMapDepartment();
}
