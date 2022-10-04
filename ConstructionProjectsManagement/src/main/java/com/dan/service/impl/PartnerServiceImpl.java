/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Partner;
import com.dan.repository.PartnerRepository;
import com.dan.service.PartnerService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartnerServiceImpl implements PartnerService {

    @Autowired
    private PartnerRepository partnerRepository;

    @Override
    public void removePartner(int id) {
        this.partnerRepository.removePartner(id);
    }

    @Override
    public List<Partner> searchAll(String kw) {
        return this.partnerRepository.searchAll(kw);
    }

    @Override
    public void updatePartner(int id, Map<String, String> params) {
        this.partnerRepository.updatePartner(id, params);
    }
}
