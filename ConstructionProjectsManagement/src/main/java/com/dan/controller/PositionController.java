/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PositionService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/position")
public class PositionController {

    @Autowired
    private PositionService positionService;

    @GetMapping
    public String getPosition(Model model, @RequestParam Map<String, String> params) {
        String kw = params.get("kw");
        model.addAttribute("positionList", this.positionService.getPosition(true, kw));
        model.addAttribute("keyword", kw);
        return "position";
    }

    @GetMapping("/{id}")
    public String getPositionDetail(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("positionDetail", this.positionService.findPositionById(id, true));
        return "positionDetail";
    }
}
