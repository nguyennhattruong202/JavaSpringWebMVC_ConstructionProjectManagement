/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Participation;
import com.dan.repository.ParticipationRepository;
import com.dan.service.ParticipationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ParticipationServiceImpl implements ParticipationService {

    @Autowired
    private ParticipationRepository participationRepository;

    @Override
    public List<Object[]> getPersonnelJoinProject(int projectId, boolean active) {
        return this.participationRepository.getPersonnelJoinProject(projectId, active);
    }

    @Override
    public void removePersonnelFromProject(Participation participation) {
        this.participationRepository.removePersonnelFromProject(participation);
    }

    @Override
    public Participation findParticipationById(int id) {
        return this.participationRepository.findParticipationById(id);
    }

    @Override
    public boolean updateParticipation(Participation oldParticipation, Participation newParticipation) {
        return this.participationRepository.updateParticipation(oldParticipation, newParticipation);
    }

}
