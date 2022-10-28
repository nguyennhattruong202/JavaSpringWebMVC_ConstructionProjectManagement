/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Partner;
import com.dan.service.PartnerService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
    public String pushEmptyPartner(Model model) {
        model.addAttribute("newPartner", new Partner());
        return "partnerAdd";
    }

    @PostMapping("/admin/partner/add")
    public String addPartner(@ModelAttribute(value = "newPartner") @Valid Partner partner, BindingResult result) {
        if (result.hasErrors()) {
            return "partnerAdd";
        }
        if (this.partnerService.addPartner(partner) == true) {
            return "redirect:/admin/partner/list";
        }
        return "partnerAdd";
    }

    @GetMapping("/admin/partner/edit")
    public String showFormPartnerUpdate(Model model, @RequestParam(value = "id", required = false) String id) {
        if (id != null && !id.isEmpty()) {
            model.addAttribute("partner", this.partnerService.findPartnerById(Integer.parseInt(id), true));
        }
        model.addAttribute("partner", new Partner());
        return "partnerUpdate";
    }

//    @GetMapping("/admin/partner/{partnerId}/update")
//    public String getPartnerToUpdate(Model model, @PathVariable(value = "partnerId") int id) {
//        model.addAttribute("partnerById", this.partnerService.findPartnerById(id, true));
//        return "partnerUpdate";
//    }
//
//    @PostMapping("/admin/partner/{partnerId}/update")
//    public String updatePartner(@ModelAttribute(value = "partnerById") Partner partner, Model model) {
//        if (this.partnerService.update(partner) == true) {
//            return "redirect:/admin/partner/list";
//        }
//        return "partnerUpdate";
//    }
}
