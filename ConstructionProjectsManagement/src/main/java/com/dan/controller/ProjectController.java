/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/project")
public class ProjectController {

    @GetMapping
    public String getProjectList() {
        return "project";
    }

    @GetMapping("/detail")
    public String getProjectDetail() {
        return "projectDetail";
    }

    @GetMapping("/task")
    public String getTaskOfProject() {
        return "task";
    }
}
