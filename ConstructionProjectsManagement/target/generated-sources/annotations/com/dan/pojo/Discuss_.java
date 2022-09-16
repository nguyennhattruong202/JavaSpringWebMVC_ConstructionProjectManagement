package com.dan.pojo;

import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Discuss.class)
public class Discuss_ { 

    public static volatile SingularAttribute<Discuss, Project> idProject;
    public static volatile SingularAttribute<Discuss, Date> createdDate;
    public static volatile SingularAttribute<Discuss, String> topic;
    public static volatile SingularAttribute<Discuss, Boolean> active;
    public static volatile SingularAttribute<Discuss, Integer> id;
    public static volatile SingularAttribute<Discuss, String> content;
    public static volatile SingularAttribute<Discuss, Personnel> idPersonnel;

}