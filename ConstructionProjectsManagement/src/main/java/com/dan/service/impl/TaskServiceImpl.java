/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Task;
import com.dan.repository.TaskRepository;
import com.dan.service.TaskService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskRepository taskRepository;

    @Override
    public List<Object[]> getTask(int categoryId, boolean active) {
        return this.taskRepository.getTask(categoryId, active);
    }

    @Override
    public boolean addTask(Task task) {
        return this.taskRepository.addTask(task);
    }
}
