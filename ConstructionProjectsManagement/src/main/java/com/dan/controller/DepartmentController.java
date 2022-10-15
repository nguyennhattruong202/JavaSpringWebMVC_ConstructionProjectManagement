/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Department;
import com.dan.service.DepartmentService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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

    @PostMapping("/admin/department")
    public String updateDepartmnet(Model model, @ModelAttribute(value = "updateDepartment") Department department) {
        Department oldDepartment = this.departmentService.findDepartmentById(department.getId());
        oldDepartment.setName(department.getName());
        oldDepartment.setActive(true);
        oldDepartment.setDescription(department.getDescription());
        model.addAttribute("resultUpdateDepartment", this.departmentService.updateDepartment(oldDepartment));
        return "department";
    }

    @GetMapping("admin/department/add")
    public String showAddDepartmentForm(Model model) {
        model.addAttribute("addDepartment", new Department());
        return "departmentAdd";
    }

    @PostMapping("admin/department/add")
    public String addDepartment(Model model, @ModelAttribute(value = "addDepartment") @Valid Department department,
            BindingResult result) {
        if (result.hasErrors()) {
            return "departmentAdd";
        }
        model.addAttribute("resultAddDepartment", this.departmentService.addDepartment(department));
        return "departmentAdd";
    }
}
