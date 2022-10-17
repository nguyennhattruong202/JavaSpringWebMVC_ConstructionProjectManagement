/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Task;
import com.dan.service.CategoryService;
import com.dan.service.PersonnelService;
import com.dan.service.StatusService;
import com.dan.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;
    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private StatusService statusService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/admin/project/category/{categoryId}")
    public String getTask(Model model, @PathVariable(value = "categoryId") int categoryId) {
        model.addAttribute("category", this.categoryService.findCategoryById(categoryId, true));
        model.addAttribute("dataOfTask", this.taskService.getTask(categoryId, true));
        return "task";
    }

    @GetMapping("/admin/project/category/{categoryId}/task/add")
    public String showAddTaskForm(Model model, @PathVariable(value = "categoryId") int categoryId) {
        model.addAttribute("category", this.categoryService.findCategoryById(categoryId, true));
        model.addAttribute("newTask", new Task());
        model.addAttribute("listPersonnel", this.personnelService.getPersonnel(true));
        model.addAttribute("listStatus", this.statusService.getStatus());
        return "taskAdd";
    }

    @PostMapping("/admin/project/category/{categoryId}/task/add")
    public String addTask(Model model, @ModelAttribute(value = "newTask") Task task, @PathVariable(value = "categoryId") int categoryId) {
        if (this.taskService.addTask(task) == true) {
            return "redirect:/admin/project/category/" + categoryId;
        }
        return "taskAdd";
    }
}
