/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.CategoryService;
import com.dan.service.ProjectService;
import com.dan.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private StatusService statusService;

    @GetMapping("/admin/project/{projectId}/categories")
    public String getCategoryList(Model model, @PathVariable(value = "projectId") int projectId) {
        model.addAttribute("categoryList", this.categoryService.getCategory(projectId, true));
        model.addAttribute("projectById", this.projectService.findProjectById(projectId));
        return "category";
    }
}
