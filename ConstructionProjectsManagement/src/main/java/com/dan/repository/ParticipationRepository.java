/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Participation;
import java.util.List;

public interface ParticipationRepository {

    List<Object[]> getPersonnelJoinProject(int projectId, boolean active);

    void removePersonnelFromProject(Participation participation);

    Participation findParticipationById(int id);

    boolean updateParticipation(Participation participation);
}
