/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Status;
import com.dan.repository.StatusRepository;
import com.dan.service.StatusService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatusServiceImpl implements StatusService {

    @Autowired
    private StatusRepository statusRepository;

    @Override
    public List<Status> getStatus() {
        return this.statusRepository.getStatus();
    }

    @Override
    public Map<String, String> getMapStatus() {
        return this.statusRepository.getMapStatus();
    }

}
