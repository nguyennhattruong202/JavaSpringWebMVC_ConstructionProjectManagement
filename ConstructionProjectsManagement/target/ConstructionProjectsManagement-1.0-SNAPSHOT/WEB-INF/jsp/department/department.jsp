<%-- 
    Document   : department
    Created on : Oct 13, 2022, 3:42:44 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top text-uppercase">
        Quản lý phòng ban
    </div>
    <div class="p-3">
        <c:if test="${resultUpdateDepartment == true}">
            <div id="alertSuccess"class="alert alert-success alert-dismissible fade show" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                </svg>
                Cập nhật thành công!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <c:if test="${resultUpdateDepartment == false}">
            <div id="alertFailed" class="alert alert-danger alert-dismissible fade show" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg>
                Cập nhật thất bại!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchDepartment">
                    <button class="btn btn-outline-primary" id="buttonSearchDepartment" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="buttonAddDepartment" href="${adminAction}/department/add" class="btn btn-outline-primary me-1">
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
            <th>Ngày tạo</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${department}" var="d">
                    <tr>
                        <td>${d.id}</td>
                        <td>${d.name}</td>
                        <td>${d.description}</td>
                        <td><span class="badge rounded-pill bg-primary"><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${d.createdDate}"/></span></td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Xem danh sách nhân sự</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalUpdateDepartment${d.id}">Sửa phòng ban</a></li>
                                <li><a class="dropdown-item" href="#">Xóa phòng ban</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalUpdateDepartment${d.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title text-white text-uppercase">Cập nhật thông tin</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form:form method="post" action="${adminAction}/department" modelAttribute="updateDepartment">
                                <div class="modal-body">
                                    <div class="row mb-3">
                                        <div class="col">
                                            <div class="form-floating">
                                                <form:input path="id" type="number" cssClass="form-control" id="inputIdDepartment" readonly="true" value="${d.id}"/>
                                                <label for="inputIdDepartment">Mã phòng ban</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <div class="form-floating">
                                                <form:input path="name" type="text" cssClass="form-control" id="inputNameDepartment" value="${d.name}"/>
                                                <label for="inputNameDepartment">Tên phòng ban</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <div class="form-floating">
                                                <form:input type="text" path="description" cssClass="form-control" id="inputDescriptionDepartment" value="${d.description}"/>
                                                <label for="inputDescriptionDepartment">Mô tả phòng ban</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-outline-danger my-wpx-100">Cập nhật</button>
                                    <button type="submit" class="btn btn-outline-primary my-wpx-100" data-bs-dismiss="modal">
                                        Đóng
                                    </button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

