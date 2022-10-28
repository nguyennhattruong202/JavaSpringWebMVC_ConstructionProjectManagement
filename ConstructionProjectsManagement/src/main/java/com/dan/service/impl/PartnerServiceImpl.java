/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Partner;
import com.dan.repository.PartnerRepository;
import com.dan.service.PartnerService;
import java.util.List;
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
    public boolean updatePartner(int id, Partner partner) {
        return this.partnerRepository.updatePartner(id, partner);
    }
    
    @Override
    public Partner findPartnerById(int id, boolean active) {
        return this.partnerRepository.findPartnerById(id, active);
    }
    
    @Override
    public boolean addPartner(Partner partner) {
        partner.setActive(true);
        return this.partnerRepository.addPartner(partner);
    }

    @Override
    public boolean update(Partner partner) {
        return this.partnerRepository.update(partner);
    }
}
