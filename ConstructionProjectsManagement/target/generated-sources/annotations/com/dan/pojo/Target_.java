package com.dan.pojo;

import com.dan.pojo.Category;
import com.dan.pojo.Change;
import com.dan.pojo.Status;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Target.class)
public class Target_ { 

    public static volatile SingularAttribute<Target, Status> idStatus;
    public static volatile SingularAttribute<Target, Boolean> active;
    public static volatile SingularAttribute<Target, Integer> id;
    public static volatile SingularAttribute<Target, String> content;
    public static volatile SingularAttribute<Target, Category> idCategory;
    public static volatile SingularAttribute<Target, Change> idPersonnel;

}