/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Partner;
import java.util.List;
import java.util.Map;

public interface PartnerService {

    void removePartner(int id);

    List<Partner> searchAll(String kw);

    void updatePartner(int id, Map<String, String> params);
}
