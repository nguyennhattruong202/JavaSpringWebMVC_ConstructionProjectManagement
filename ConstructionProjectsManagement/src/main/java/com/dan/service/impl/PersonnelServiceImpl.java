/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Personnel;
import com.dan.repository.PersonnelRepository;
import org.springframework.stereotype.Service;
import com.dan.service.PersonnelService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Service
public class PersonnelServiceImpl implements PersonnelService {

    @Autowired
    private PersonnelRepository personnelRepository;

    @Override
    public List<Object[]> getPersonnel(boolean active) {
        return this.personnelRepository.getPersonnel(active);
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
        return false;
    }

    @Override
    public Personnel getPersonnelByEmail(String email) {
        return this.personnelRepository.getPersonnelByEmail(email);
    }

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {
        Personnel personnel = this.personnelRepository.getPersonnelByEmail(string);
        if (personnel == null) {
            throw new UsernameNotFoundException("Invalid username!!!");
        }

        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(personnel.getRole()));

        return new org.springframework.security.core.userdetails.User(
                personnel.getEmail(), personnel.getPassword(), authorities);
    }

    @Override
    public List<Personnel> getAll(int page, boolean active) {
        return this.personnelRepository.getAll(page, active);
    }

    @Override
    public int countPersonnel() {
        return this.personnelRepository.countPersonnel();
    }

    @Override
    public boolean updatePersonnel(Personnel personnel) {
        return this.personnelRepository.updatePersonnel(personnel);
    }

    @Override
    public void removedPersonnel(int id) {
        this.personnelRepository.removedPersonnel(id);
    }
}
