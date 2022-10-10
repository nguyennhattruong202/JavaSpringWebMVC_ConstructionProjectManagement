/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Personnel;
import java.util.List;

public interface PersonnelService {

    List<Object[]> getPersonnel(boolean active);

    List<Object[]> constructionSupervisonList();

    Personnel findPersonnelById(int id, boolean active);

    List<String> getPersonnelRole();

    boolean addPersonnel(Personnel personnel);
}
