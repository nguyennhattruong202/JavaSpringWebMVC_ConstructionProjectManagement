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
                <img src="<c:url value="/images/vietnamIcon.png"/>" alt="home" 
                     class="img-fluid" width="50" height="50">
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
                            <img src="<c:url value="/images/englandIcon.png"/>" height="20" width="20" 
                                 alt="englandIcon">
                            <fmt:message key="header.language.select.en"/>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="?lang=vi">
                            <img src="<c:url value="/images/vietnamIcon.png"/>" height="20" width="20" 
                                 alt="vietnamIcon">
                            <fmt:message key="header.language.select.vi"/>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class=" p-2 bd-highlight">
            <a href="#">
                <img class="img-fluid rounded-circle" width="30" height="30" 
                     src="<c:url value="/images/vietnamIcon.png"/>" alt="userAvatar">
            </a>
        </div>
    </div>
</div>
<div class="shadow rounded p-3 mt-3 bg-body d-flex">
    <a href="#" class="text-decoration-none text-center">Trang chủ</a>
    <div class="vr me-3 ms-3"></div>
    <a href="#" class="text-decoration-none text-center">Tin tức</a>
    <div class="vr me-3 ms-3"></div>
    <a href="#" class="text-decoration-none text-center">Thảo luận</a>
    <div class="vr me-3 ms-3"></div>
    <a href="#" class="text-decoration-none text-center">Báo cáo</a>
    <div class="vr me-3 ms-3"></div>
    <a href="#" class="text-decoration-none text-center">Lịch</a>
    <div class="vr me-3 ms-3"></div>
    <a href="<c:url value="/admin/project"/>" class="text-decoration-none text-center">Dự án</a>
    <div class="vr me-3 ms-3"></div>
    <a href="<c:url value="/admin/personnel"/>" class="text-decoration-none text-center">Nhân sự</a>
    <div class="vr me-3 ms-3"></div>
    <a href="<c:url value="/admin/partner/list"/>" class="text-decoration-none text-center">Đối tác</a>
    <div class="vr me-3 ms-3"></div>
    <a href="<c:url value="/admin/position"/>" class="text-decoration-none text-center">Chức vụ</a>
</div>