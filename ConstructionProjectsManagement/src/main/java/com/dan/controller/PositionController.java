/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/position")
public class PositionController {

    @Autowired
    private PositionService positionService;

    @GetMapping("/list")
    public String getPosition(Model model) {
        model.addAttribute("positionList", this.positionService.getPosition(true));
        return "position";
    }

    @GetMapping("/{id}")
    public String getPositionDetail(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("positionDetail", this.positionService.findPositionById(id, true));
        return "positionDetail";
    }
}
