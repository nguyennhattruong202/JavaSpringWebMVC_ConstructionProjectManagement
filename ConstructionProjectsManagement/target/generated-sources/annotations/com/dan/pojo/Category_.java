package com.dan.pojo;

import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import com.dan.pojo.Status;
import com.dan.pojo.Target;
import com.dan.pojo.Task;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile SingularAttribute<Category, Status> idStatus;
    public static volatile SingularAttribute<Category, Project> idProject;
    public static volatile SetAttribute<Category, Task> taskSet;
    public static volatile SetAttribute<Category, Target> targetSet;
    public static volatile SingularAttribute<Category, String> name;
    public static volatile SingularAttribute<Category, String> description;
    public static volatile SingularAttribute<Category, Boolean> active;
    public static volatile SingularAttribute<Category, Date> finishDate;
    public static volatile SingularAttribute<Category, Integer> id;
    public static volatile SingularAttribute<Category, Integer> percent;
    public static volatile SingularAttribute<Category, Date> startDate;
    public static volatile SingularAttribute<Category, Personnel> idPersonnel;

}