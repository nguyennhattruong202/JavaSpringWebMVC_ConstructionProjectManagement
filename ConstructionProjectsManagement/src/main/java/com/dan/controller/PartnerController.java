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
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PartnerController {

    @Autowired
    private PartnerService partnerService;

    @GetMapping("/admin/partner/list")
    public String listPartnerIndex(Model model, @RequestParam Map<String, String> params) {
        String kw = params.get("kw");
        model.addAttribute("partnerList", this.partnerService.searchAll(kw));
        model.addAttribute("keyword", kw);
        return "partner";
    }

    @GetMapping("/admin/partner/add")
    public String insertPartner() {
        return "insertpartner";
    }

    @GetMapping("/admin/partner/update")
    public String updatePartner() {
        return "partnerUpdate";
    }
}
