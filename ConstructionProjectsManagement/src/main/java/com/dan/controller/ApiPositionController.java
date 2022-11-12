/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Position;
import com.dan.service.PositionService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin/api/position")
public class ApiPositionController {

    @Autowired
    private PositionService positionService;

    @PutMapping(path = "/update", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    @ResponseStatus(HttpStatus.OK)
    public void updatePositionApi(@RequestBody Position position) {
        this.positionService.update(position);
    }

//    @PutMapping(path = "/update/{id}", produces = {
//        MediaType.APPLICATION_JSON_VALUE
//    })
//    @ResponseStatus(HttpStatus.OK)
//    public void updatePositionApi(@RequestBody Map<String, String> params) {
//        int id = Integer.parseInt(params.get("id"));
//        String name = params.get("name");
//        String description = params.get("description");
//        this.positionService.updatePosition(id, name, description);
//    }
    @PostMapping(path = "/add", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Position> addPositionApi(@RequestBody Map<String, String> params) {
        String name = params.get("name");
        String description = params.get("description");

        Position position = this.positionService.addPosition(name, description);

        return new ResponseEntity<>(position, HttpStatus.CREATED);
    }
}
