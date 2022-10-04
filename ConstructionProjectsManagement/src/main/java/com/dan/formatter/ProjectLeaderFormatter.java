/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dan.formatter;

import com.dan.pojo.Personnel;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

public class ProjectLeaderFormatter implements Formatter<Personnel> {

    @Override
    public String print(Personnel t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Personnel parse(String id, Locale locale) throws ParseException {
        Personnel personnel = new Personnel();
        personnel.setId(Integer.parseInt(id));
        return personnel;
    }
}
