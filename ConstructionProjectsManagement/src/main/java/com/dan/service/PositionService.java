/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Position;
import java.util.List;
import java.util.Map;

public interface PositionService {

    List<Position> getPosition(boolean active);

    Position findPositionById(int id, boolean active);

    boolean removePosition(int id);

    boolean updatePosition(int id, String name, String description);

    Position addPosition(String name, String description);

    Map<String, String> getPosition();
}
