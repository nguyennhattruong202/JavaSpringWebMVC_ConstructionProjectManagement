<%-- 
    Document   : login
    Created on : Sep 29, 2022, 4:29:43 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #divLeftLogin{
        background-color: #0c163b;
        width: 25%;
        height: 100%;
        color: white;
        position: fixed;
        top: 0;
        left: 0;
        overflow-x: hidden;
    }
    #divContentLogin{
        margin-left: 25%;
        height: 100%;
    }
</style>
<c:url value="/login" var="loginAction"/>
<section class="vh-100">
    <div id="divLeftLogin"></div>
    <div id="divContentLogin" class="d-flex justify-content-center align-items-center">
        <form method="post" action="${loginAction}" class="w-50">
            <div class="shadow bg-body p-5" style="height: 500px">
                <h2 class="mb-5 text-uppercase" style="color: #0c163b;">Đăng nhập</h2>
                <div class="input-group mb-4">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                    <input type="email"name="username" class="form-control" placeholder="Nhập email">
                </div>
                <div class="input-group mb-4">
                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                    <input type="password" name="password" class="form-control" placeholder="Nhập mật khẩu">
                </div>
                <div class="d-grid mb-4">
                    <button class="btn fw-bold text-white" style="background-color: #026aa7;" type="submit">Đăng nhập</button>
                </div>
                <div class="text-end">
                    <a href="#" class="text-decoration-none">Quên mật khẩu?</a>
                </div>
            </div>
        </form>
    </div>  
</section>

