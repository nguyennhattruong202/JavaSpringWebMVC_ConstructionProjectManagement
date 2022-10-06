/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PersonnelService;
import com.dan.service.ProjectService;
import com.dan.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/project")
public class ProjectController {

    @Autowired
    private ProjectService projectService;
    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private StatusService statusService;

    @GetMapping
    public String getProjectList(Model model) {
        model.addAttribute("projectList", this.projectService.getProjects());
        return "project";
    }

    @GetMapping("/{id}/detail")
    public String getProjectDetail(@PathVariable(value = "id") int id, Model model) {
        model.addAttribute("projectById", this.projectService.findProjectById(id));
        model.addAttribute("CSList", this.personnelService.constructionSupervisonList());
        model.addAttribute("statusList", this.statusService.getStatus());
        return "projectDetail";
    }
}
