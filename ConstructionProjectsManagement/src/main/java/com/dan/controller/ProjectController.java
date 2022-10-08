/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Project;
import com.dan.service.PersonnelService;
import com.dan.service.ProjectService;
import com.dan.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProjectController {

    @Autowired
    private ProjectService projectService;
    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private StatusService statusService;

    @GetMapping("/admin/project")
    public String getProjectList(Model model) {
        model.addAttribute("projectList", this.projectService.getProjects());
        return "project";
    }

    @GetMapping("/admin/project/add")
    public String loadAddProjectForm(Model model) {
        model.addAttribute("CSListForProjectAdd", this.personnelService.constructionSupervisonList());
        model.addAttribute("statusListForProjectAdd", this.statusService.getStatus());
        model.addAttribute("newProject", new Project());
        return "projectAdd";
    }

    @PostMapping("/admin/project/add")
    public String addProject(@ModelAttribute(value = "newProject") Project project) {
        project.setImageProject(null);
        project.setImage(null);
        project.setActive(true);
        if (this.projectService.addProject(project) == true) {
            return "redirect:/admin/project";
        }
        return "projectAdd";
    }

    @GetMapping("/admin/project/{id}/update")
    public String loadUpdateProjectForm(@PathVariable(value = "id") int id, Model model) {
        model.addAttribute("projectById", this.projectService.findProjectById(id));
        model.addAttribute("csListForUpdate", this.personnelService.constructionSupervisonList());
        model.addAttribute("statusListForUpdate", this.statusService.getStatus());
        model.addAttribute("projectUpdate", new Project());
        return "projectUpdate";
    }

    @PostMapping("/admin/project/{id}/update")
    public String updateProject(@ModelAttribute(value = "projectUpdate") Project projectUpdate) {
        if (this.projectService.updateProject(projectUpdate) == true) {
            return "redirect:/admin/project";
        }
        return "projectUpdate";
    }
}
