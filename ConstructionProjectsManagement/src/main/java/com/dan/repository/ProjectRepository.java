/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Project;
import java.util.List;
import java.util.Map;

/**
 *
 * @author DELL
 */
public interface ProjectRepository {

    List<Project> getProjects(String kw, int page);

    int countProject();
}
