/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.ProjectService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author DELL
 */
@Controller
@RequestMapping("/admin")
@PropertySource("classpath:databases.properties")
public class AdminController {

    @Autowired
    private ProjectService projectService;

    @Autowired
    private Environment env;

    @RequestMapping("/projectmanagement")
    public String projectManage(Model model, @RequestParam Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        
        model.addAttribute("projects", this.projectService.getProjects(kw, page));
        model.addAttribute("projectCounter", this.projectService.countProject());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("page.size")));
        
        return "projectmanagement";
    }

    @GetMapping("/addproject")
    public String addProject() {
        return "addproject";
    }

    @GetMapping("/updateproject")
    public String updateProject() {
        return "updateproject";
    }
}
