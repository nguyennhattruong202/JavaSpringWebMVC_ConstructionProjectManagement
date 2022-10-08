/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.service.impl;

import com.dan.pojo.Category;
import com.dan.repository.CategoryRepository;
import com.dan.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Object[]> getCategory(int projectId, boolean active) {
        return this.categoryRepository.getCategory(projectId, active);
    }

    @Override
    public Category findCategoryById(int categoryId, boolean active) {
        return this.categoryRepository.findCategoryById(categoryId, active);
    }

}
