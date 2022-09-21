///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.dan.controller;
//
//import com.dan.pojo.Personnel;
//import com.dan.service.PersonnelService;
//import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//@RequestMapping("/api/personnel")
//public class ApiPersonnelController {
//
//    @Autowired
//    private PersonnelService personnelService;
//
//    @GetMapping
//    public ResponseEntity<List<Personnel>> getAllPersonnel() {
//        return new ResponseEntity<>(this.personnelService.getAllPersonnel(0, true), HttpStatus.OK);
//    }
//}
