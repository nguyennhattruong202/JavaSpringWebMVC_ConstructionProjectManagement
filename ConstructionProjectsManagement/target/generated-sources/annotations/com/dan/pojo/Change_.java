package com.dan.pojo;

import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import com.dan.pojo.Target;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Change.class)
public class Change_ { 

    public static volatile SingularAttribute<Change, Project> idProject;
    public static volatile SingularAttribute<Change, String> new1;
    public static volatile SetAttribute<Change, Target> targetSet;
    public static volatile SingularAttribute<Change, Date> createdDate;
    public static volatile SingularAttribute<Change, String> old;
    public static volatile SingularAttribute<Change, Boolean> active;
    public static volatile SingularAttribute<Change, Integer> id;
    public static volatile SingularAttribute<Change, String> content;
    public static volatile SingularAttribute<Change, Personnel> idPersonnel;

}