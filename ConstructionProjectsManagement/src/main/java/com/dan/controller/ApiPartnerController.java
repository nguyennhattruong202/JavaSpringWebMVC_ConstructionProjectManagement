/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Partner;
import com.dan.service.PartnerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/partner")
public class ApiPartnerController {

    @Autowired
    private PartnerService partnerService;

    @GetMapping
    public ResponseEntity<List<Partner>> getPartner() {
        return new ResponseEntity<>(this.partnerService.getPartner(), HttpStatus.OK);
    }

    @GetMapping("/removed/{partnerId}")
    @ResponseStatus(HttpStatus.OK)
    public void removePartner(@PathVariable(value = "partnerId") int partnerId) {
        this.partnerService.removePartner(partnerId);
    }
}
