<%-- 
    Document   : footerLayout
    Created on : Sep 16, 2022, 11:46:53 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #divFooterLayout{
        background-color: #026aa7;
        text-align: center;
        color: #ffffff;
        padding: 15px 0px;
        margin-left: 15%;
    }
    #divFooterLayout a{
        text-decoration: none;
        color: #ffffff;
    }
    #divFooterLayout a:hover{
        text-decoration: underline;
    }
</style>
<c:url value="/admin" var="adminAction"/>
<div id="divFooterLayout">
    &copy; 2022 Copyright
    <a href="${adminAction}/home">ConstructionProjectsManagement.com</a>
</div>
