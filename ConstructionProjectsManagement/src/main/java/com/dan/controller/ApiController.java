/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.controller;

import com.dan.pojo.Department;
import com.dan.service.DepartmentService;
import com.dan.service.PartnerService;
import com.dan.service.PersonnelService;
import com.dan.service.PositionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private PartnerService partnerService;
    @Autowired
    private PositionService positionService;

    @RequestMapping(value = "/admin/api/personnel/removed", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public void removedPersonnel(@RequestParam(value = "id") int id) {
        this.personnelService.removedPersonnel(id);
    }

    @RequestMapping(value = "/admin/api/department/removed", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public void removedDepartment(@RequestParam(value = "id") int id) {
        this.departmentService.removed(id);
    }

    @RequestMapping(value = "/admin/api/partner/removed", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public void removedPartner(@RequestParam(value = "id") int id) {
        this.partnerService.removePartner(id);
    }

    @RequestMapping(value = "/admin/api/position/removed", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public void removedPosition(@RequestParam(value = "id") int id) {
        this.positionService.removed(id);
    }

    @RequestMapping(value = "/admin/api/department/add", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Department> addDepartment(@RequestBody Department department) {
        return new ResponseEntity<>(this.departmentService.add(department), HttpStatus.CREATED);
    }

    @RequestMapping(value = "/admin/api/department/list", method = RequestMethod.GET)
    public ResponseEntity<List<Department>> getDepartmentWithKey(@RequestParam(value = "keyword", required = false) String keyword) {
        return new ResponseEntity<>(this.departmentService.getDepartmentWithKey(keyword), HttpStatus.OK);
    }
}
