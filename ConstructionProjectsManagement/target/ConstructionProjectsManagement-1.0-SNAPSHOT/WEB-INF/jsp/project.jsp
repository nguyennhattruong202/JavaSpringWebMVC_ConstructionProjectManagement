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
                <th>Dia diem</th>
                <th>Nhan cong toi da</th>
                <th>Phan tram</th>
                <th>Trang thai</th>
                <th>Ngay tao</th>
                <th>Thao tac</th>
                </thead>
                <tbody id="tbodyGetProjects"></tbody>
            </table>
        </div>
    </div>
</div>
<script src="<c:url value="/js/project.js" />"></script>
<script>
    window.onload = function () {
        getProjects('${endpoint}');
    };
</script>
