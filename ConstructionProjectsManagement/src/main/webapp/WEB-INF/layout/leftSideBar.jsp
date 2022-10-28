<%-- 
    Document   : leftSideBar
    Created on : Oct 22, 2022, 4:40:11 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #leftSideBar {
        height: 100%;
        width: 15%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        overflow-x: hidden;
        background-color: #0c163b;
    }
    #leftSideBar a {
        text-decoration: none;
        color: white;
        display: block;
        margin-top: 5px;
        padding: 10px 10px;
    }
    #leftSideBar a:hover {
        background-color: #0d6efd;
    }

    #leftSideBar a:focus {
        background-color: #0d6efd;
    }
    #divAvatarContainer {
        border-bottom: 1px solid #DEE2E6;
        padding: 10px;
        text-align: center;
    }
    #imgAvatarLeftSideBar {
        width: 100px;
        height: 100px;
    }
</style>
<div id="leftSideBar">
    <sec:authorize access="isAuthenticated()">
        <div id="divAvatarContainer">
            <img id="imgAvatarLeftSideBar" class="rounded-circle"
                 src="${pageContext.session.getAttribute("currentUser").avatar}"
                 alt="userAvatar">
            <h5 class="text-white mt-2">${pageContext.session.getAttribute("currentUser").lastName} ${pageContext.session.getAttribute("currentUser").firstName}</h5>
        </div>
    </sec:authorize>
    <a href="<c:url value="/admin/home"/>"><i class="fa-solid fa-house me-2"></i>Trang chủ</a>
    <a href="#"><i class="fa-solid fa-newspaper me-2"></i>Tin tức</a>
    <a href="#"><i class="fa-solid fa-comments me-2"></i>Thảo luận</a>
    <a href="#"><i class="fa-solid fa-chart-simple me-2"></i>Báo cáo</a>
    <a href="#"><i class="fa-solid fa-calendar-days me-2"></i>Lịch</a>
    <a href="<c:url value="/admin/project"/>"><i class="fa-solid fa-building me-2"></i>Dự án</a>
    <a href="<c:url value="/admin/personnel"/>"><i class="fa-solid fa-users me-2"></i>Nhân sự</a>
    <a href="<c:url value="/admin/partner/list"/>"><i class="fa-solid fa-handshake me-2"></i>Đối tác</a>
    <a href="<c:url value="/admin/position"/>"><i class="fa-solid fa-user-tie me-2"></i>Chức vụ</a>
    <a href="<c:url value="/admin/department"/>"><i class="fa-solid fa-building-user me-2"></i>Phòng ban</a>
</div>
