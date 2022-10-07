/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Partner;
import java.util.List;

public interface PartnerRepository {

    void removePartner(int id);

    List<Partner> searchAll(String kw);

    boolean updatePartner(int id, Partner partner);

    Partner findPartnerById(int id, boolean active);

    boolean addPartner(Partner partner);
}
