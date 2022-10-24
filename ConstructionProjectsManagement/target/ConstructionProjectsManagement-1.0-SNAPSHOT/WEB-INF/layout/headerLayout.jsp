<%-- 
    Document   : headerLayout
    Created on : Sep 16, 2022, 11:46:42 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #headerLayout {
        margin-left: 15%;
        background-color: #026aa7;
        padding: 10px;
        text-align: end;
        border-bottom: solid #6c757d 1px;
        box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .175);
    }

    #headerLayout a {
        font-size: larger;
        text-decoration: none;
        color: #ffffff;
        margin-left: 10px;
    }

    #headerLayout a:hover{
        opacity: 0.8;
    }
</style>

<div id="headerLayout">
    <a href="#" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ngôn ngữ">
        <i class="fa-solid fa-globe"></i>
    </a>
    <a href="#" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tài khoản của tôi">
        <i class="fa-solid fa-user"></i>
    </a>
    <a href="<c:url value="/logout"/>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Đăng xuất">
        <i class="fa-solid fa-power-off"></i>
    </a>
</div>