<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #aLoginIndex{
        background-color: #026aa7;
        color: white;
        font-weight: bold;
        text-transform: uppercase;
        width: 30%;
        border-radius: 0px;
        margin-top: 20px;
    }
    #aLoginIndex:hover{
        text-decoration: underline;
        box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .175);
    }
    h1{
        font-size: 50px;
        color: #0c163b;
        text-transform: uppercase;
        width: 75%;
    }
    #divLeftIndex{
        background-color: #0c163b;
        width: 25%;
        height: 100%;
        color: white;
        position: fixed;
        top: 0;
        left: 0;
        overflow-x: hidden;
    }
    #divContentIndex{
        margin-left: 25%;
        padding: 10px;
    }
</style>
<section class="vh-100">
    <div id="divLeftIndex"></div>
    <div id="divContentIndex">
        <h1>Hệ thống quản lý dự án cho công ty xây dựng</h1>
        <a class="btn" href="<c:url value="/login"/>"id="aLoginIndex">Đăng nhập</a>
    </div>
</section>