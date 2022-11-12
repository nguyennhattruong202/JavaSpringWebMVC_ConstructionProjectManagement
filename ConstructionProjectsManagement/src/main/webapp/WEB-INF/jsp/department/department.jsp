<%-- 
    Document   : department
    Created on : Oct 13, 2022, 3:42:44 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<c:url value="/admin" var="adminAction"/>
<c:url value="/admin/department" var="listDepartmentUrl"/>
<c:url value="/admin/api/department/removed" var="removedEndpoint"/>
<c:url value="/admin/api/department/add" var="addEndpoint"/>
<c:url value="/admin/api/department/list" var="listEndpoint"/>

<div class="my-main-content-container">
    <div class="my-tool-container d-flex justify-content-end">
        <form class="w-100 d-flex">
            <input id="inputSearchDepartment" type="text" class="form-control">
            <button onclick="findDepartment('${listEndpoint}', '${removedEndpoint}')" class="my-button" type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" data-bs-toggle="modal" data-bs-toggle="tooltip" data-bs-target="#modalAddDepartment" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-container">
        <div class="my-titile-container">Quản lý phòng ban</div>
        <div class="my-content-container">
            <table class="table table-hover table-striped">
                <thead>
                <th></th>
                <th>ID</th>
                <th>Tên phòng ban</th>
                <th>Mô tả</th>
                <th>Ngày tạo</th>
                <th></th>
                </thead>
                <tbody id="tBodyDepartment"></tbody>
            </table>
            <ul class="pagination d-flex justify-content-end">
                <li class="page-item"><a class="page-link" style="color: #026aa7; border-radius: 0px;" href="#">1</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAddDepartment">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    Thêm phòng ban mới
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tên phòng ban:</div>
                        <div class="col">
                            <input id="name" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2 d-flex align-items-center">Mô tả:</div>
                        <div class="col">
                            <textarea id="description" class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="my-button-action" data-bs-dismiss="modal" onclick="addDepartment('${addEndpoint}')">Lưu</button>
                    <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="<c:url value="/js/department.js" />"></script>
<script>
    window.onload = function () {
        getListDepartment('${listEndpoint}', '${removedEndpoint}', '${listDepartmentUrl}');
    };
</script>
