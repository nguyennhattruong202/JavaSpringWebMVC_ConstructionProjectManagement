<%-- 
    Document   : detailPersonnel
    Created on : Sep 27, 2022, 1:40:08 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Cập nhật thông tin nhân sự
    </div>
    <div class="p-3">
        <div class="row">
            <div class="col-2">
                <img class="img-fluid my-img-200 rounded" src="${personnelById.avatar}" alt="imgAvatarPersonnelUpdate">
            </div>
            <div class="col-10">
                <div class="row mb-2">
                    <div class="col-8">
                        <div class="form-floating">
                            <input id="inputLastNamePersonnelUpdate" type="text" class="form-control" value="${personnelById.lastName}">
                            <label for="inputLastNamePersonnelUpdate">Họ và tên lót</label>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-floating">
                            <input id="inputFirstNamePersonnelUpdate" type="text" class="form-control" value="${personnelById.firstName}">
                            <label for="inputFirstNamePersonnelUpdate">Tên</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <div class="form-floating">
                            <select id="selectGenderPersonnelUpdate" class="form-select">
                                <option value="0" selected="true" disabled="true">Chọn...</option>
                                <option value="1">Nam</option>
                                <option value="2">Nữ</option>
                            </select>
                            <label for="selectGenderPersonnelUpdate">Giới tính</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <input id="inputBirthdayPersonnelUpdate" type="date" class="form-control" value="${personnelById.birthday}">
                            <label for="inputBirthdayPersonnelUpdate">Ngày sinh</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <input id="inputIdentityPersonnelUpdate" type="text" class="form-control" value="${personnelById.identity}">
                            <label for="inputIdentityPersonnelUpdate">CMND/CCCD</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-8">
                        <div class="form-floating">
                            <input id="inputEmailPersonnelUpdate" type="email" class="form-control" value="${personnelById.email}">
                            <label for="inputEmailPersonnelUpdate">Email</label>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-floating">
                            <input id="inputPhonePersonnelUpdate" type="tel" class="form-control" value="${personnelById.phone}">
                            <label for="inputPhonePersonnelUpdate">Số điện thoại</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <div class="form-floating">
                            <input id="inputAddressPersonnelUpdate" type="text" class="form-control" value="${personnelById.address}">
                            <label for="inputAddressPersonnelUpdate">Địa chỉ</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <div class="form-floating">
                            <select id="selectPositionPersonnelUpdate" class="form-select">
                                <option value="0" selected="true" disabled="true">Chọn...</option>
                                <c:forEach items="${getPosition}" var="position">
                                    <option value="${position.id}">${position.name}</option>
                                </c:forEach>
                            </select>
                            <label for="selectPositionPersonnelUpdate">Chức vụ</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <select id="selectDepartmentPersonnelUpdate" class="form-select">
                                <option value="0" selected="true" disabled="true">Chọn...</option>
                                <c:forEach items="${getDepartment}" var="department">
                                    <option value="${department.id}">${department.name}</option>
                                </c:forEach>
                            </select>
                            <label for="selectDepartmentPersonnelUpdate">Phòng ban</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <div class="form-floating">
                            <select id="selectRolePersonnelUpdate"class="form-select">
                                <option value="0" selected="true" disabled="true">Chọn...</option>
                                <c:forEach items="${getRole}" var="i">
                                    <option value="${i}">${i}</option>
                                </c:forEach>
                            </select>
                            <label for="selectRolePersonnelUpdate">Role</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label for="inputAvatarPersonnelUpdate" class="form-label">Hình ảnh</label>
                        <input id="inputAvatarPersonnelUpdate"class="form-control" type="file">
                    </div>
                </div>
            </div>
        </div>
        <div class="text-end">
            <a href="#" class="btn btn-outline-primary my-wpx-100 fw-bold">Quay lại</a>
            <input type="button" class="btn btn-outline-danger my-wpx-100 fw-bold" value="Lưu">
        </div>
    </div>
</div>
