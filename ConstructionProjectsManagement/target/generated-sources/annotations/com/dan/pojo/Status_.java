package com.dan.pojo;

import com.dan.pojo.Category;
import com.dan.pojo.Project;
import com.dan.pojo.Target;
import com.dan.pojo.Task;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Status.class)
public class Status_ { 

    public static volatile SetAttribute<Status, Task> taskSet;
    public static volatile SetAttribute<Status, Target> targetSet;
    public static volatile SingularAttribute<Status, String> name;
    public static volatile SingularAttribute<Status, String> description;
    public static volatile SingularAttribute<Status, Integer> id;
    public static volatile SingularAttribute<Status, String> type;
    public static volatile SetAttribute<Status, Category> categorySet;
    public static volatile SetAttribute<Status, Project> projectSet;

}