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
<style>
    #inputSearchDepartment {
        border-radius: 0px;
    }
    .modal-footer button{
        width: 100px;
        background-color: #026aa7;
        color: #ffffff;
        border: none;
        padding: 5px 15px;
    }
    .modal-footer button:hover{
        color: #ffffff;
        box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .175);
    }
    .modal-header{
        background-color: #026aa7;
        color: #ffffff;
        text-transform: uppercase;
        font-weight: bold;
    }
    .page-link{
        color: #026aa7;
    }
</style>

<c:url value="/admin" var="adminAction"/>
<div style="margin-left: 15%; padding: 10px;">
    <div class="d-flex justify-content-end">
        <input type="text" id="inputSearchDepartment" class="form-control">
        <button id="buttonSearchDepartment" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <a href="#"class="my-button" id="aAddDepartment" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </a>
        <button id="buttonFilterDepartment" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button id="buttonPrintDepartment" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-container">
        <div class="my-titile-container">Quản lý phòng ban</div>
        <div class="pe-2 ps-2">
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
            <table class="table table-hover table-striped">
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
                            <td><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss" value="${d.createdDate}"/></td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <c:url value="/admin/department" var="c">
                                        <c:param value="${d.id}" name="id"/>
                                    </c:url>
                                    <li><a class="dropdown-item" href="#">Xem danh sách nhân sự</a></li>
                                    <li><a class="dropdown-item" href="${c}" data-bs-toggle="modal" data-bs-target="#modalUpdateDepartment${d.id}">Sửa phòng ban</a></li>
                                    <li><a class="dropdown-item" href="#">Xóa phòng ban</a></li>
                                </ul>
                            </td>
                        </tr>
                    <div class="modal fade" id="modalUpdateDepartment${d.id}">
                        <div class="modal-dialog modal-lg modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    Cập nhật thông tin
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form:form method="post" action="${adminAction}/department" modelAttribute="updateDepartment">
                                    <div class="modal-body">
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Mã phòng ban:</div>
                                            <div class="col">
                                                <form:input path="id" id="id" type="number" cssStyle="border-radius: 0px;" cssClass="form-control" readonly="true" value="${d.id}"/>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Tên phòng ban:</div>
                                            <div class="col">
                                                <form:input path="name" id="name" type="text" cssStyle="border-radius: 0px;" cssClass="form-control" value="${d.name}"/>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Mô tả phòng ban:</div>
                                            <div class="col">
                                                <form:textarea path="description" id="description" cssStyle="border-radius: 0px;" cssClass="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button>Cập nhật</button>
                                        <button type="submit" data-bs-dismiss="modal">Đóng</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination d-flex justify-content-end">
                <li class="page-item"><a class="page-link" href="#">1</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAddDepartment">
                        <div class="modal-dialog modal-lg modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    Thêm phòng ban mới
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form:form method="post" action="${adminAction}/department" modelAttribute="updateDepartment">
                                    <div class="modal-body">
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Mã phòng ban:</div>
                                            <div class="col">
                                                <form:input path="id" id="id" type="number" cssStyle="border-radius: 0px;" cssClass="form-control" readonly="true" value="${d.id}"/>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Tên phòng ban:</div>
                                            <div class="col">
                                                <form:input path="name" id="name" type="text" cssStyle="border-radius: 0px;" cssClass="form-control" value="${d.name}"/>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-3 d-flex align-items-center fw-bold">Mô tả phòng ban:</div>
                                            <div class="col">
                                                <form:textarea path="description" id="description" cssStyle="border-radius: 0px;" cssClass="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button>Cập nhật</button>
                                        <button type="submit" data-bs-dismiss="modal">Đóng</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
