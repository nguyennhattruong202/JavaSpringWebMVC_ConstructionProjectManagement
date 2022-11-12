/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Participation;
import com.dan.pojo.Project;
import com.dan.service.ParticipationService;
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
    private StatusService statusService;
    @Autowired
    private ParticipationService participationService;

    @GetMapping("/admin/project")
    public String getProjectList(Model model) {
        model.addAttribute("projectList", this.projectService.getProjects());
        return "project";
    }

    @GetMapping("/admin/project/add")
    public String showFormAddProject() {
        return "projectAdd";
    }

    @GetMapping("/admin/project/{id}")
    public String loadUpdateProjectForm(@PathVariable(value = "id") int id, Model model) {
        model.addAttribute("projectById", this.projectService.findProjectById(id));
        model.addAttribute("status", this.statusService.getMapStatus());
        return "projectUpdate";
    }

    @PostMapping("/admin/project/{id}")
    public String updateProject(@ModelAttribute(value = "projectById") Project projectUpdate) {
        return "projectUpdate";
    }

    @GetMapping("/admin/project/{projectId}/personnel")
    public String showPersonnelOfProject(Model model, @PathVariable(value = "projectId") int projectId) {
        model.addAttribute("project", this.projectService.findProjectById(projectId));
        model.addAttribute("personnelOfProject", this.participationService.getPersonnelJoinProject(projectId, true));
        return "participation";
    }

    @GetMapping("/admin/project/{projectId}/participation/{participationId}")
    public String showUpdateParticipation(Model model, @PathVariable(value = "projectId") int projectId,
            @PathVariable(value = "participationId") int participationId) {
        model.addAttribute("project", this.projectService.findProjectById(projectId));
        model.addAttribute("newParticipation", new Participation());
        model.addAttribute("participation", this.participationService.findParticipationById(participationId));
        return "participationUpdate";
    }

    @PostMapping("/admin/project/{projectId}/participation/{participationId}")
    public String updateParticipation(Model model, @PathVariable(value = "participationId") int participationId,
            @ModelAttribute(value = "newParticipation") Participation newParticipation) {
        Participation oldParticipation = this.participationService.findParticipationById(participationId);
        model.addAttribute("updateParticipation", this.participationService.updateParticipation(oldParticipation, newParticipation));
        return "participationUpdate";
    }
}
