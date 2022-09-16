package com.dan.pojo;

import com.dan.pojo.Category;
import com.dan.pojo.Personnel;
import com.dan.pojo.Status;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Task.class)
public class Task_ { 

    public static volatile SingularAttribute<Task, Status> idStatus;
    public static volatile SingularAttribute<Task, String> taskcol;
    public static volatile SingularAttribute<Task, String> name;
    public static volatile SingularAttribute<Task, String> description;
    public static volatile SingularAttribute<Task, Boolean> active;
    public static volatile SingularAttribute<Task, Date> finishDate;
    public static volatile SingularAttribute<Task, Integer> id;
    public static volatile SingularAttribute<Task, Integer> percent;
    public static volatile SingularAttribute<Task, Date> startDate;
    public static volatile SingularAttribute<Task, Category> idCategory;
    public static volatile SingularAttribute<Task, Personnel> idPersonnel;

}