<%-- 
    Document   : department
    Created on : Oct 13, 2022, 3:42:44 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top text-uppercase">
        Quản lý phòng ban
    </div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchDepartment">
                    <button class="btn btn-outline-primary" id="buttonSearchDepartment" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="buttonAddDepartment" href="#" class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </a>
            <a id="buttonPrintDepartment" class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </a>
        </div>
        <table class="table table-hover">
            <thead>
            <th>ID</th>
            <th>Tên phòng ban</th>
            <th>Mô tả</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${department}" var="d">
                    <tr>
                        <td>${d.id}</td>
                        <td>${d.name}</td>
                        <td>${d.description}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Xem danh sách nhân sự</a></li>
                                <li><a class="dropdown-item" href="#">Sửa phòng ban</a></li>
                                <li><a class="dropdown-item" href="#">Xóa phòng ban</a></li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
