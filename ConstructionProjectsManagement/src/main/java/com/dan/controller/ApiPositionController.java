/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.service.PositionService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiPositionController {

    @Autowired
    private PositionService positionService;

    @GetMapping("/api/position/removed/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void removePositionApi(@PathVariable(value = "id") int id) {
        this.positionService.removePosition(id);
    }

    @PutMapping(path = "/api/position/update/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    @ResponseStatus(HttpStatus.OK)
    public void updatePositionApi(@RequestBody Map<String, String> params) {
        int id = Integer.parseInt(params.get("id"));
        String name = params.get("name");
        String description = params.get("description");
        this.positionService.updatePosition(id, name, description);
    }
}
