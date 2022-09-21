/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service;

import java.util.List;
import java.util.Map;

public interface PersonnelService {

    List<Object[]> getAllPersonnel(Map<String, String>params, int page, boolean active);
}
