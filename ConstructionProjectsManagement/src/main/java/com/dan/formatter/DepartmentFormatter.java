/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.formatter;

import com.dan.pojo.Department;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

public class DepartmentFormatter implements Formatter<Department> {

    @Override
    public String print(Department t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Department parse(String departmentId, Locale locale) throws ParseException {
        Department department = new Department();
        department.setId(Integer.parseInt(departmentId));
        return department;
    }

}
