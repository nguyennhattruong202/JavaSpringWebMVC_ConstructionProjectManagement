/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Participation;
import com.dan.service.ParticipationService;
import com.dan.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin/api")
public class ApiProjectController {

    @Autowired
    private ProjectService projectService;
    @Autowired
    private ParticipationService participationService;

    @GetMapping("project/removed/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void removeProjectApi(@PathVariable(value = "id") int id) {
        this.projectService.removedProject(id);
    }

    @GetMapping("/project/removed/personnel/{participationId}")
    @ResponseStatus(HttpStatus.OK)
    public void removePersonnelFromProjectApi(@PathVariable(value = "participationId") int participationId) {
        Participation participation = this.participationService.findParticipationById(participationId);
        this.participationService.removePersonnelFromProject(participation);
    }
}
