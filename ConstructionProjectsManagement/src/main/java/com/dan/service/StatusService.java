/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Status;
import java.util.List;
import java.util.Map;

public interface StatusService {

    List<Status> getStatus();

    Map<String, String> getMapStatus();
}
