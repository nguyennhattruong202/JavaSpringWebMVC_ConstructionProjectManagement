/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Department;
import com.dan.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @GetMapping("/admin/department")
    public String showDepartment(Model model) {
        model.addAttribute("department", this.departmentService.getDepartment());
        model.addAttribute("updateDepartment", new Department());
        return "department";
    }
}
