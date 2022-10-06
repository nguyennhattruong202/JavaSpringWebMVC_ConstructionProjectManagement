<%-- 
    Document   : category
    Created on : Oct 3, 2022, 6:46:24 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api/project" var="endpoint" />
<c:url value="/admin" var="adminAction" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top">
        Danh sach hang muc thi cong
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
            <table class="table table-hover">
                <thead>
                <th>Id</th>
                <th>Ten hang muc</th>
                <th>Ngay bat dau</th>
                <th>Ngay ket thuc</th>
                <th>Phan cong</th>
                <th>Phan tram</th>
                <th>Trang thai</th>
                <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${categoryList}" var="listCategory">
                        <tr>
                            <td>${listCategory[0]}</td>
                            <td>${listCategory[1]}</td>
                            <td>${listCategory[2]}</td>
                            <td>${listCategory[3]}</td>
                            <td>${listCategory[4]} ${listCategory[7]}</td>
                            <td>${listCategory[5]}</td>
                            <td>${listCategory[6]}</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="${adminAction}/project/category/${listCategory[0]}">Xem cong viec</a></li>
                                    <li><a class="dropdown-item" href="#">Sua hang muc thi cong</a></li>
                                    <li><a class="dropdown-item" href="#">Xoa</a></li>
                                </ul>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
