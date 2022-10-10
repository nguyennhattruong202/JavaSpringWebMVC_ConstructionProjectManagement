/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dan.pojo.Personnel;
import com.dan.repository.PersonnelRepository;
import org.springframework.stereotype.Service;
import com.dan.service.PersonnelService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class PersonnelServiceImpl implements PersonnelService {

    @Autowired
    private PersonnelRepository personnelRepository;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Object[]> getPersonnel(boolean active) {
        return this.personnelRepository.getPersonnel(active);
    }

    @Override
    public List<Object[]> constructionSupervisonList() {
        return this.personnelRepository.constructionSupervisonList();
    }

    @Override
    public Personnel findPersonnelById(int id, boolean active) {
        return this.personnelRepository.findPersonnelById(id, active);
    }

    @Override
    public List<String> getPersonnelRole() {
        return this.personnelRepository.getPersonnelRole();
    }

    @Override
    public boolean addPersonnel(Personnel personnel) {
        try {
            Map r = this.cloudinary.uploader().upload(personnel.getPersonnelImage().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            personnel.setAvatar((String) r.get("secure_url"));
            personnel.setActive(true);
            return this.personnelRepository.addPersonnel(personnel);
        } catch (IOException ex) {
            System.err.println("===Add personnel error service===" + ex.getMessage());
        }
        return false;
    }

}
