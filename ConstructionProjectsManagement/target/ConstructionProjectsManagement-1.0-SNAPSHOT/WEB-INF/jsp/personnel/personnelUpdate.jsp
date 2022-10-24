<%-- 
    Document   : detailPersonnel
    Created on : Sep 27, 2022, 1:40:08 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div style="margin-left: 15%; padding: 10px;">
    <div class="d-flex justify-content-end">
        <a href="${adminAction}/personnel" id="aCancelPersonnelUpdate" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
            <i class="fa-solid fa-arrow-left"></i>
        </a>
        <button id="buttonSavePersonnelUpdate" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lưu">
            <i class="fa-solid fa-floppy-disk"></i>
        </button>
        <button id="buttonResetPersonnelUpdate" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
            <i class="fa-solid fa-arrow-rotate-right"></i>
        </button>
    </div>
    <div class="my-container">
        <div class="my-titile-container">Cập nhật thông tin nhân sự</div>
        <div class="pe-2 ps-2">
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Họ và tên lót:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px;" value="${personnelById.lastName}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Tên:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px;" value="${personnelById.firstName}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Giới tính:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px;">
                        <option selected="true" disabled="true">---Chọn---</option>
                        <option value="Nam">Nam</option>
                        <option value="Nữ">Nữ</option>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Ngày sinh:</div>
                <div class="col">
                    <input type="date" class="form-control" style="border-radius: 0px;" value="${personnelById.birthday}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">CCCD/CMND:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px;" value="${personnelById.identity}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Email:</div>
                <div class="col">
                    <input type="email" class="form-control" style="border-radius: 0px;" value="${personnelById.email}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Số điện thoại:</div>
                <div class="col">
                    <input type="tel" class="form-control" style="border-radius: 0px;" value="${personnelById.phone}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Địa chỉ:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px;" value="${personnelById.address}">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Chức vụ:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px;">
                        <option selected="true" disabled="true">---Chọn---</option>
                        <c:forEach items="${getPosition}" var="position">
                            <option value="${position.id}">${position.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Phòng ban:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px;">
                        <option selected="true" disabled="true">---Chọn---</option>
                        <c:forEach items="${getDepartment}" var="department">
                            <option value="${department.id}">${department.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Role:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px;">
                        <option selected="true" disabled="true">---Chọn---</option>
                        <option value="ROLE_ADMIN">ROLE_ADMIN</option>
                        <option value="ROLE_MANAGER">ROLE_MANAGER</option>
                        <option value="ROLE_STAFF">ROLE_STAFF</option>
                    </select>
                </div>
            </div>
            <div class="row mt-3 mb-3">
                <div class="col-2 d-flex align-items-center fw-bold">Hình ảnh:</div>
                <div class="col">
                    <input type="file" class="form-control" style="border-radius: 0px;">
                </div>
            </div>
        </div>
    </div>
</div>