/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.repository.PersonnelRepository;
import org.springframework.stereotype.Service;
import com.dan.service.PersonnelService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class PersonnelServiceImpl implements PersonnelService {

    @Autowired
    private PersonnelRepository personnelRepository;

    @Override
    public List<Object[]> getAllPersonnel(Map<String, String> params, int page, boolean active) {
        return this.personnelRepository.getAllPersonnel(params, page, active);
    }

}
