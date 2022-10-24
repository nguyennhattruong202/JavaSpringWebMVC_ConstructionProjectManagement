<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
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
</style>
<c:url value="/admin" var="adminAction"/>
<div style="margin-left: 15%; padding: 10px;">
    <div class="d-flex justify-content-end mb-2">
        <input type="text" id="inputSearchPersonnel" class="form-control">
        <button id="buttonSearchPersonnel" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
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
                <th>Role</th>
                <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${listPersonnel}" var="personnel">
                        <tr class="align-middle">
                            <td>${personnel[0]}</td>
                            <td>${personnel[2]} ${personnel[3]}</td>
                            <td>${personnel[4]}</td>
                            <td>${personnel[5]}</td>
                            <td>${personnel[6]}</td>
                            <td>${personnel[7]}</td>
                            <td>${personnel[8]}</td>
                            <td>${personnel[10]}</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalViewPersonnel${personnel[0]}">Xem chi tiết</a></li>
                                    <li><a class="dropdown-item" href="${adminAction}/personnel/${personnel[0]}/update">Cập nhật thông tin</a></li>
                                    <li><a class="dropdown-item">Xóa nhân sự</a></li>
                                </ul>
                            </td>
                        </tr>
                    <div class="modal fade" id="modalViewPersonnel${personnel[0]}">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    <h5 class="modal-title text-white text-uppercase">Thông tin nhân sự</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-3 d-flex justify-content-center">
                                            <img class="img-fluid my-img-200 rounded" src="${personnel[1]}" alt="imgAvatarPersonnel">
                                        </div>
                                        <div class="col-9">
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputIdPersonnel" type="number" class="form-control bg-body" value="${personnel[0]}" readonly>
                                                        <label for="inputIdPersonnel">ID</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-8">
                                                    <div class="form-floating">
                                                        <input id="inputLastNamePersonnel" type="text" class="form-control bg-body" value="${personnel[2]}" readonly>
                                                        <label for="inputLastNamePersonnel">Họ và tên lót</label>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form-floating">
                                                        <input id="inputFirstNamePersonnel" type="text" class="form-control bg-body" value="${personnel[3]}" readonly>
                                                        <label for="inputFirstNamePersonnel">Tên</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputGenderPersonnel" type="text" class="form-control bg-body" value="${personnel[4]}" readonly>
                                                        <label for="inputGenderPersonnel">Giới tính</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputBirthdayPersonnel" type="date" class="form-control bg-body" value="${personnel[5]}" readonly>
                                                        <label for="inputBirthdayPersonnel">Ngày sinh</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputIdentityPersonnel" type="text" class="form-control bg-body" value="${personnel[6]}" readonly>
                                                        <label for="inputIdentityPersonnel">CMND/CCCD</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-8">
                                                    <div class="form-floating">
                                                        <input id="inputEmailPersonnel" type="email" class="form-control bg-body" value="${personnel[8]}" readonly>
                                                        <label for="inputEmailPersonnel">Email</label>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form-floating">
                                                        <input id="inputPhonePersonnel" type="tel" class="form-control bg-body" value="${personnel[7]}" readonly>
                                                        <label for="inputPhonePersonnel">Số điện thoại</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputAddressPersonnel" type="text" class="form-control bg-body" value="${personnel[9]}" readonly>
                                                        <label for="inputAddressPersonnel">Địa chỉ</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputPositionPersonnel" type="text" class="form-control bg-body" value="${personnel[11]}" readonly>
                                                        <label for="inputPositionPersonnel">Chức vụ</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputDepartmentPersonnel" type="text" class="form-control bg-body" value="${personnel[12]}" readonly>
                                                        <label for="inputDepartmentPersonnel">Phòng ban</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input id="inputRolePersonnel" type="text" class="form-control bg-body" value="${personnel[10]}" readonly>
                                                        <label for="inputRolePersonnel">Role</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                                        Đóng
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </tbody>
            </table>
            <div class="d-flex justify-content-end">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>