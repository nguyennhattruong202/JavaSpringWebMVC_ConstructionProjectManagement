<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #inputSearchPersonnel {
        border-radius: 0px;
    }
    #divTitleListPersonnel {
        background-color: #026aa7;
        color: #ffffff;
        padding: 5px 5px;
        border: 1px solid #026aa7;
        text-transform: uppercase;
        font-weight: bold;
    }
    .my-table-container {
        background-color: #ffffff;
        border: 1px solid #DEE2E6;
    }
    #aAddPersonnel:hover{
        color: #ffffff;
    }
    .modal-content{
        border-radius: 0px;
    }
    .modal-header{
        background-color: #026aa7;
        color: #ffffff;
        text-transform: uppercase;
        font-weight: bold;
        border-radius: 0px;
    }
</style>
<c:url value="/admin" var="adminAction"/>
<c:url value="/admin/api/personnel/removed" var="removedEndpoint"/>
<c:url value="/admin/personnel" var="listPersonnelUrl"/>

<div style="margin-left: 15%; padding: 10px;">
    <div class="d-flex justify-content-end mb-2">
        <form class="w-100 d-flex">
            <input type="text" id="inputSearchPersonnel" class="form-control" name="keyword">
            <button id="buttonSearchPersonnel" type="submit" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <a href="${adminAction}/personnel/add"class="my-button" id="aAddPersonnel" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </a>
        <button id="buttonFilterPersonnel" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button id="buttonPrintPersonnel" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-table-container">
        <div id="divTitleListPersonnel">Danh sách nhân sự</div>
        <div class="pe-2 ps-2">
            <table class="table table-hover table-striped">
                <thead>
                <th>ID</th>
                <th>Họ và tên</th>
                <th>Giới tính</th>
                <th>Ngày sinh</th>
                <th>CMND/CCCD</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${listPersonnel}" var="personnel">
                        <tr class="align-middle">
                            <td>${personnel.id}</td>
                            <td>${personnel.lastName} ${personnel.firstName}</td>
                            <td>${personnel.gender}</td>
                            <td>${personnel.birthday}</td>
                            <td>${personnel.identity}</td>
                            <td>${personnel.phone}</td>
                            <td>${personnel.email}</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="${adminAction}/personnel/${personnel.id}/update">Xem và cập nhật</a></li>
                                    <li><a href="#" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalConfirmRemovePersonnel${personnel.id}">Xóa nhân sự</a></li>
                                </ul>
                            </td>
                        </tr>
                    <div class="modal fade" id="modalConfirmRemovePersonnel${personnel.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    Lưu ý
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có chắc muốn xóa ${personnel.lastName} ${personnel.firstName}?
                                </div>
                                <div class="modal-footer">
                                    <button onclick="remove('${removedEndpoint}?id=${personnel.id}', '${listPersonnelUrl}')" type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                    <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </tbody>
            </table>
            <div class="d-flex justify-content-end">
                <ul class="pagination">
                    <c:forEach begin="1" end="${Math.ceil(personnelCounter/15)}" var="i">
                        <c:url value="/admin/personnel" var="c">
                            <c:param value="${i}" name="page"/>
                        </c:url>
                        <li class="page-item"><a class="page-link" href="${c}">${i}</a></li>
                        </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>