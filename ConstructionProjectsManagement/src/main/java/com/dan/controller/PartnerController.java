/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PartnerService;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/partner")
public class PartnerController {

    @Autowired
    private PartnerService partnerService;

    @GetMapping("/list")
    public String listPartnerIndex(Model model, @RequestParam Map<String, String> params) {
        String kw = params.get("kw");
        model.addAttribute("partnerList", this.partnerService.searchAll(kw));
        model.addAttribute("keyword", kw);
        return "listPartner";
    }

    @GetMapping("/add")
    public String insertPartner() {
        return "insertpartner";
    }
}
