package com.dan.pojo;

import com.dan.pojo.Category;
import com.dan.pojo.Change;
import com.dan.pojo.Discuss;
import com.dan.pojo.Invest;
import com.dan.pojo.Personnel;
import com.dan.pojo.Status;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Project.class)
public class Project_ { 

    public static volatile SetAttribute<Project, Discuss> discussSet;
    public static volatile SingularAttribute<Project, String> image;
    public static volatile SingularAttribute<Project, String> description;
    public static volatile SingularAttribute<Project, Boolean> active;
    public static volatile SetAttribute<Project, Category> categorySet;
    public static volatile SingularAttribute<Project, Integer> percent;
    public static volatile SetAttribute<Project, Change> changeSet;
    public static volatile SingularAttribute<Project, Personnel> idPersonnel;
    public static volatile SingularAttribute<Project, Status> idStatus;
    public static volatile SingularAttribute<Project, String> name;
    public static volatile SingularAttribute<Project, Date> finishDate;
    public static volatile SingularAttribute<Project, Integer> id;
    public static volatile SetAttribute<Project, Invest> investSet;
    public static volatile SingularAttribute<Project, Date> startDate;

}