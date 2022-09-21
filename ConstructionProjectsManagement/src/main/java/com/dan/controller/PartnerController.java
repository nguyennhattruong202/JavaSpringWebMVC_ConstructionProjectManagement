/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PartnerService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/list-partner")
public class PartnerController {

    @Autowired
    private PartnerService partnerService;

    @GetMapping
    public String listPartnerIndex(Model model) {
        model.addAttribute("listPartnerIndex", this.partnerService.getParner());
        return "listPartner";
    }
}
