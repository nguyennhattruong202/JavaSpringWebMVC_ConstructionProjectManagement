/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @GetMapping("/admin/project/category/{categoryId}")
    public String getTask(Model model, @PathVariable(value = "categoryId") int categoryId) {
        model.addAttribute("dataOfTask", this.taskService.getTask(categoryId, true));
        return "task";
    }

    @GetMapping("/admin/task/add")
    public String addTask() {
        return "taskAdd";
    }
}
