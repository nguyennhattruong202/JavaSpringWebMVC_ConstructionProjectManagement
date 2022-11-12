/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Position;
import java.util.List;
import java.util.Map;

public interface PositionRepository {

    List<Position> getPosition(boolean active);

    Position findPositionById(int id, boolean active);

    void removed(int id);

    boolean updatePosition(int id, String name, String description);

    Position addPosition(String name, String description);

    Map<String, String> getPosition();

    void update(Position position);
}
