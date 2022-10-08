/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Project;
import java.util.List;

public interface ProjectRepository {

    List<Object[]> getProjects();

    boolean removedProject(int id);

    Project findProjectById(int id);

    boolean addProject(Project project);

    boolean updateProject(Project project);
}
