<%-- 
    Document   : headerLayout
    Created on : Sep 16, 2022, 11:46:42 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow p-3 bg-body rounded">
    <div class="d-flex bd-highlight border-bottom align-items-center">
        <div class="me-auto p-2 bd-highlight">
            <a href="#">
                <img src="<c:url value="/images/vietnamIcon.png"/>" alt="home" class="img-fluid" width="50" height="50">
            </a>
        </div>
        <div class="p-2 bd-highlight">
            <div class="dropdown">
                <a class="btn text-primary" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
                    <i class="bi bi-globe2 fa-lg"></i>
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

    <div class="mt-3 bg-body rounded">
        <div class="btn-group w-100" role="group">
            <a href="#" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.homeLink"/>">
                <i class="fas fa-home fa-lg"></i>
            </a>
            <a href="#" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.newsLink"/>">
                <i class="fas fa-newspaper fa-lg"></i>
            </a>
            <a href="#" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.discussionLink"/>">
                <i class="fas fa-comment-dots fa-lg"></i>
            </a>
            <a href="#" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.reportLink"/>">
                <i class="fas fa-chart-bar fa-lg"></i>
            </a>
            <a href="#" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.calendarLink"/>">
                <i class="fas fa-calendar-alt fa-lg"></i>
            </a>
            <a href="<c:url value="/admin/projectmanagement"/>" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.projectsLink"/>">
                <i class="fas fa-building fa-lg"></i>
            </a>
            <a href="<c:url value="/personnel"/>" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="leftSidebar.item.personnel"/>">
                <i class="fas fa-users fa-lg"></i>
            </a>
            <a href="<c:url value="/admin/partner/list"/>" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Partner">
                <i class="fas fa-handshake fa-lg"></i>
            </a>
        </div>
    </div>
</div>