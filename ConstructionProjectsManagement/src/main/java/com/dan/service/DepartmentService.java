/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Department;
import java.util.List;
import java.util.Map;

public interface DepartmentService {

    List<Department> getDepartment();

    boolean updateDepartment(Department department);

    Department add(Department department);

    Department findDepartmentById(int departmentId);

    Map<String, String> getMapDepartment();

    void removed(int id);

    List<Department> getDepartmentWithKey(String keyword);
}
