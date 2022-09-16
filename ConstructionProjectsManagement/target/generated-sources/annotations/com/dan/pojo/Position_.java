package com.dan.pojo;

import com.dan.pojo.Personnel;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Position.class)
public class Position_ { 

    public static volatile SingularAttribute<Position, String> name;
    public static volatile SingularAttribute<Position, String> description;
    public static volatile SetAttribute<Position, Personnel> personnelSet;
    public static volatile SingularAttribute<Position, Integer> id;

}