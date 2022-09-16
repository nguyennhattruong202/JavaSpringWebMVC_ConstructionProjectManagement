package com.dan.pojo;

import com.dan.pojo.Personnel;
import com.dan.pojo.Project;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Invest.class)
public class Invest_ { 

    public static volatile SingularAttribute<Invest, Date> approvedDate;
    public static volatile SingularAttribute<Invest, Project> idProject;
    public static volatile SingularAttribute<Invest, Date> createdDate;
    public static volatile SingularAttribute<Invest, Long> money;
    public static volatile SingularAttribute<Invest, Boolean> active;
    public static volatile SingularAttribute<Invest, Integer> id;
    public static volatile SingularAttribute<Invest, String> content;
    public static volatile SingularAttribute<Invest, Personnel> idPersonnel;

}