/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dan.service;

import com.dan.pojo.Category;
import java.util.List;

public interface CategoryService {

    List<Object[]> getCategory(int projectId, boolean active);

    Category findCategoryById(int categoryId, boolean active);
}
