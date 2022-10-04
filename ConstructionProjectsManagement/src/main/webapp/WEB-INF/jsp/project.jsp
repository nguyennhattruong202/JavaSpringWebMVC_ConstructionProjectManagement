<%-- 
    Document   : projectmanagement
    Created on : Sep 17, 2022, 10:53:26 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api/project" var="endpoint" />
<c:url value="/admin/project" var="action" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Danh sach du an
    </div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchProject" placeholder="Nhập từ khóa...">
                    <button class="btn btn-outline-primary" id="buttonSearchPrọect" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="buttonAddProject" class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </a>
            <a id="buttonPrintProject" class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </a>
        </div>
        <div style="overflow-x: auto">
            <table class="table table-hover" style="overflow-x: auto">
                <thead>
                <th>Id</th>
                <th>Ten du an</th>
                <th>Ngay bat dau</th>
                <th>Ngay ket thuc</th>
                <th>Truong du an</th>
                <th>Nhan cong toi da</th>
                <th>Phan tram</th>
                <th>Trang thai</th>
                <th>Ngay tao</th>
                <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${projectList}" var="pl">
                        <tr>
                            <td>${pl[0]}</td>
                            <td>${pl[1]}</td>
                            <td>${pl[2]}</td>
                            <td>${pl[3]}</td>
                            <td>${pl[8]} ${pl[9]}</td>
                            <td>${pl[4]}</td>
                            <td>${pl[5]}</td>
                            <td>${pl[6]}</td>
                            <td>${pl[7]}</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Xem hang muc thi cong</a></li>
                                    <li><a class="dropdown-item" href="${action}/${pl[0]}/detail">Sua du an</a></li>
                                    <li><a class="dropdown-item" onclick="removeProject('${endpoint}/removed/${pl[0]}')">Xoa</a></li>
                                </ul>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="<c:url value="/js/project.js" />"></script>
