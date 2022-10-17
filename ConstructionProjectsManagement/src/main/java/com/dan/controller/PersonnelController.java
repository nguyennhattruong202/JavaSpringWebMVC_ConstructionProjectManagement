/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Personnel;
import com.dan.service.DepartmentService;
import com.dan.service.PersonnelService;
import com.dan.service.PositionService;
import java.util.HashSet;
import java.util.Set;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PersonnelController {

    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private PositionService positionService;
    @Autowired
    private DepartmentService departmentService;

    @GetMapping("/admin/personnel")
    public String showPersonnelList(Model model) {
        model.addAttribute("listPersonnel", this.personnelService.getPersonnel(true));
        return "personnel";
    }

    @GetMapping("/admin/personnel/{personnelId}/update")
    public String showPersonnelUpdate(Model model, @PathVariable(value = "personnelId") int personnelId) {
        Set<String> roleSet = new HashSet<>();
        this.personnelService.getPersonnelRole().forEach(roleValue -> {
            roleSet.add(roleValue);
        });
        model.addAttribute("getRole", roleSet);
        model.addAttribute("personnelById", this.personnelService.findPersonnelById(personnelId, true));
        model.addAttribute("getPosition", this.positionService.getPosition(true));
        model.addAttribute("getDepartment", this.departmentService.getDepartment());
        return "personnelUpdate";
    }

    @GetMapping("/admin/personnel/add")
    public String showPersonnelAdd(Model model) {
        model.addAttribute("personnel", new Personnel());
        model.addAttribute("getPosition", this.positionService.getPosition(true));
        model.addAttribute("getDepartment", this.departmentService.getDepartment());
        return "personnelAdd";
    }

    @PostMapping("/admin/personnel/add")
    public String addPersonnel(Model model, @ModelAttribute(value = "personnel") @Valid Personnel personnel, BindingResult result) {
        model.addAttribute("getPosition", this.positionService.getPosition(true));
        model.addAttribute("getDepartment", this.departmentService.getDepartment());
        if (result.hasErrors()) {
            return "personnelAdd";
        }
        if (this.personnelService.addPersonnel(personnel) == true) {
            return "redirect:/admin/personnel";
        }
        return "personnelAdd";
    }
}
