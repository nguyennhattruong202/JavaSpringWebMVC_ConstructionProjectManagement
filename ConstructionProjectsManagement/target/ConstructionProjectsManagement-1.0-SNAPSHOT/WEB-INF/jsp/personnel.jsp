<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Danh sách nhân sự
    </div>
    <div class="p-3">
        <div class="mb-2 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchPersonnel">
                    <button class="btn btn-outline-primary" id="buttonSearchPersonnel" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>

            <a href="${adminAction}/personnel/add" class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </a>

            <a class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </a>
        </div>

        <table class="table table-hover">
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
        <a href="<c:url value="/"/>" class="btn btn-outline-primary" 
           data-bs-toggle="tooltip" data-bs-placement="bottom" title="Trang chủ">
            <i class="fas fa-arrow-left"></i>
        </a>
    </div>
</div>
<script src="<c:url value="/js/personnel.js"/>"></script>