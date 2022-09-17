<%-- 
    Document   : leftSidebar
    Created on : Sep 16, 2022, 2:50:32 PM
    Author     : ACER
--%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" 
     style="display: none" id="leftSidebar">
    <div class="d-flex flex-row-reverse bd-highlight">
        <div class="p-2 bd-highlight">
            <button class="w3-bar-item w3-button w3-large fw-bold"
                    onclick="closeSidebar()">
                <i class="bi bi-x-lg"></i>
            </button>
        </div>
    </div>
    <div class="w-100 text-center mb-3">
        <a href="#" class="h1 text-decoration-none text-dark">QLDA</a>
    </div>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-house-door me-3"></i>
        <fmt:message key="leftSidebar.item.homeLink"/>
    </a>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-newspaper me-3"></i>
        <fmt:message key="leftSidebar.item.newsLink"/>
    </a>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-chat-dots me-3"></i>
        <fmt:message key="leftSidebar.item.discussionLink"/>
    </a>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-graph-up me-3"></i>
        <fmt:message key="leftSidebar.item.reportLink"/>
    </a>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-calendar-week me-3"></i>
        <fmt:message key="leftSidebar.item.calendarLink"/>
    </a>
    <a href="#" class="w3-bar-item w3-button">
        <i class="bi bi-box-seam me-3"></i>
        <fmt:message key="leftSidebar.item.projectsLink"/>
    </a>
</div>
