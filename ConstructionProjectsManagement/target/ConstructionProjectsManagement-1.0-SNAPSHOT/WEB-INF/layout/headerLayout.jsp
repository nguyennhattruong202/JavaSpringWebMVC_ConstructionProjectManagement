<%-- 
    Document   : headerLayout
    Created on : Sep 16, 2022, 11:46:42 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex bd-highlight bg-light">
    <div class="me-auto p-2 bd-highlight">
        <button id="openNav" class="w3-button" onclick="openSidebar()"><i class="fa fa-bars"></i></button>
    </div>
    
    <div class="p-2 bd-highlight">
        <div class="dropdown">
            <a class="btn text-primary" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
                <i class="bi bi-globe2"></i>
            </a>

            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li>
                    <a class="dropdown-item" href="?lang=en">
                        <img src="<c:url value="/images/englandIcon.png"/>" height="20" width="20" alt="englandIcon">
                        <fmt:message key="header.language.select.en"/>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="?lang=vi">
                        <img src="<c:url value="/images/vietnamIcon.png"/>" height="20" width="20" alt="vietnamIcon">
                        <fmt:message key="header.language.select.vi"/>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class=" p-2 bd-highlight">
        <a href="#">
            <img class="img-fluid rounded-circle" width="30" height="30" src="<c:url value="/images/vietnamIcon.png"/>" alt="userAvatar">
        </a>
    </div>
</div>