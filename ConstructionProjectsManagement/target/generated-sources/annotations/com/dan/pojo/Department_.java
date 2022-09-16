package com.dan.pojo;

import com.dan.pojo.Personnel;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Department.class)
public class Department_ { 

    public static volatile SingularAttribute<Department, String> name;
    public static volatile SingularAttribute<Department, String> description;
    public static volatile SetAttribute<Department, Personnel> personnelSet;
    public static volatile SingularAttribute<Department, Integer> id;

}