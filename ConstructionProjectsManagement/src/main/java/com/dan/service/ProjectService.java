/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Project;
import java.util.List;
import java.util.Map;

/**
 *
 * @author DELL
 */
public interface ProjectService {

    List<Project> getProjects(String kw, int page);

    public int countProject();
}
