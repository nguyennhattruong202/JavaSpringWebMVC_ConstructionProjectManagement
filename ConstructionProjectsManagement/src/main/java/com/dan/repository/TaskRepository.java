/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.repository;

import com.dan.pojo.Task;
import java.util.List;

public interface TaskRepository {

    List<Object[]> getTask(int categoryId, boolean active);

    boolean addTask(Task task);
}
