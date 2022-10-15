<%-- 
    Document   : task
    Created on : Oct 1, 2022, 6:04:57 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 h5 bg-primary text-uppercase text-white rounded-top fw-bold">Danh sach cong viec</div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchTask">
                    <button class="btn btn-outline-primary" id="buttonSearchTask" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="buttonAddTask" class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </a>
            <a id="buttonPrintTask" class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </a>
        </div>
        <table class="table table-hover">
            <thead>
            <th>ID</th>
            <th>Ten cong viec</th>
            <th>Ngay bat dau</th>
            <th>Ngay ket thuc</th>
            <th>Do uu tien</th>
            <th>Nguoi thuc hien</th>
            <th>Trang thai</th>
            <th class="text-center"></th>
            </thead>
            <tbody id="tbodyListTask">
                <c:forEach items="${dataOfTask}" var="data">
                    <tr class="align-middle">
                        <td>${data[0]}</td>
                        <td>${data[1]}</td>
                        <td>${data[2]}</td>
                        <td>${data[3]}</td>
                        <td>${data[4]}</td>
                        <td>${data[7]} ${data[8]}</td>
                        <td>${data[9]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Xoa</a></li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="<c:url value="/js/task.js" />"></script>