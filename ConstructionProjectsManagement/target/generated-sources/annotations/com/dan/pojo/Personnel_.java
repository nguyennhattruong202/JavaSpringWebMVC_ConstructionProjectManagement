package com.dan.pojo;

import com.dan.pojo.Category;
import com.dan.pojo.Change;
import com.dan.pojo.Department;
import com.dan.pojo.Discuss;
import com.dan.pojo.Invest;
import com.dan.pojo.Position;
import com.dan.pojo.Project;
import com.dan.pojo.Task;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-16T10:11:08")
@StaticMetamodel(Personnel.class)
public class Personnel_ { 

    public static volatile SingularAttribute<Personnel, Date> birthday;
    public static volatile SetAttribute<Personnel, Discuss> discussSet;
    public static volatile SetAttribute<Personnel, Task> taskSet;
    public static volatile SingularAttribute<Personnel, String> address;
    public static volatile SingularAttribute<Personnel, String> role;
    public static volatile SingularAttribute<Personnel, Position> idPosition;
    public static volatile SingularAttribute<Personnel, Boolean> active;
    public static volatile SingularAttribute<Personnel, String> avatar;
    public static volatile SetAttribute<Personnel, Category> categorySet;
    public static volatile SetAttribute<Personnel, Change> changeSet;
    public static volatile SingularAttribute<Personnel, String> password;
    public static volatile SingularAttribute<Personnel, String> phone;
    public static volatile SingularAttribute<Personnel, Integer> id;
    public static volatile SingularAttribute<Personnel, String> fullname;
    public static volatile SetAttribute<Personnel, Invest> investSet;
    public static volatile SetAttribute<Personnel, Project> projectSet;
    public static volatile SingularAttribute<Personnel, String> email;
    public static volatile SingularAttribute<Personnel, String> username;
    public static volatile SingularAttribute<Personnel, Department> idDepartment;

}