<%-- 
    Document   : pesonnelAdd
    Created on : Sep 17, 2022, 6:20:48 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #divFormContainerPersonnelAdd {
        background-color: #ffffff;
        border: 1px solid #DEE2E6;
    }
    #divTitlePersonnelAdd{
        background-color: #026aa7;
        color: #ffffff;
        padding: 5px 5px;
        border: 1px solid #026aa7;
        text-transform: uppercase;
        font-weight: bold;
    }
    #aCancelPersonnelAdd:hover{
        color: #ffffff;
    }
</style>
<c:url value="/admin" var="adminAction"/>
<div style="margin-left: 15%; padding: 10px;">
    <div class="d-flex justify-content-end mb-2">
        <a href="${adminAction}/personnel" id="aCancelPersonnelAdd" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
            <i class="fa-solid fa-arrow-left"></i>
        </a>
        <button type="button" class="my-button" id="buttonAddPersonnelAdd" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-floppy-disk"></i>
        </button>
        <button id="buttonResetPersonnelAdd" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
            <i class="fa-solid fa-arrow-rotate-right"></i>
        </button>
    </div>
    <div id="divFormContainerPersonnelAdd">
        <div id="divTitlePersonnelAdd">Thêm nhân sự mới</div>
        <div class="pe-2 ps-2">
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Họ và tên lót:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Tên:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Giới tính:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px">
                        <option selected="true" disabled="true">---Chọn---</option>
                        <option value="Nam">Nam</option>
                        <option value="Nữ">Nữ</option>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Ngày sinh:</div>
                <div class="col">
                    <input type="date" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">CCCD/CMND:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Email:</div>
                <div class="col">
                    <input type="email" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Số điện thoại:</div>
                <div class="col">
                    <input type="tel" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Địa chỉ:</div>
                <div class="col">
                    <input type="text" class="form-control" style="border-radius: 0px">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-2 d-flex align-items-center fw-bold">Chức vụ:</div>
                <div class="col">
                    <select class="form-select" style="border-radius: 0px">
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
                    <select class="form-select">
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
                    <select class="form-select">
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
                    <input type="file" class="form-control" style="border-radius: 0px">
                </div>
            </div>
        </div>
    </div>
</div>
<!--
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Thêm nhân sự mới
    </div>
    <div class="p-3">
<form:form method="post" action="${adminAction}/personnel/add" enctype="multipart/form-data" modelAttribute="personnel">
    <div class="row mb-2">
        <div class="col-8">
            <div class="form-floating">
    <form:input path="lastName" id="inputLastNamePersonnelAdd" type="text" cssClass="form-control" placeholder="inputLastNamePersonnelAdd"/>
    <label for="inputLastNamePersonnelAdd">Họ và tên lót</label>
</div>
    <form:errors path="lastName" cssClass="text-danger"/>
</div>
<div class="col-4">
<div class="form-floating">
    <form:input path="firstName" id="inputFirstNamePersonnelAdd" type="text" cssClass="form-control" placeholder="inputFirstNamePersonnelAdd"/>
    <label for="inputFirstNamePersonnelAdd">Tên</label>
</div>
    <form:errors path="firstName" cssClass="text-danger"/>
</div>
</div>
<div class="row mb-2">
<div class="col">
<div class="form-floating">
    <form:select path="gender" id="selectGenderPersonnelAdd" cssClass="form-select">
        <option selected="true" disabled="true">Chọn...</option>
        <option value="Nam">Nam</option>
        <option value="Nữ">Nữ</option>
    </form:select>
    <label for="selectGenderPersonnelAdd">Giới tính</label>
</div>
    <form:errors path="gender" cssClass="text-danger"/>
</div>
<div class="col">
    <div class="form-floating">
    <form:input path="birthday" id="inputBirthdayPersonnelAdd" type="date" cssClass="form-control" placeholder="inputBirthdayPersonnelAdd"/>
    <label for="inputBirthdayPersonnelAdd">Ngày sinh</label>
</div>
    <form:errors path="birthday" cssClass="text-danger"/>
</div>
<div class="col">
<div class="form-floating">
    <form:input path="identity" id="inputIdentityPersonnelAdd" type="text" cssClass="form-control" placeholder="inputIdentityPersonnelAdd"/>
    <label for="inputIdentityPersonnelAdd">CMND/CCCD</label>
</div>
    <form:errors path="identity" cssClass="text-danger"/>
</div>
</div>
<div class="row mb-2">
<div class="col-8">
<div class="form-floating">
    <form:input path="email" id="inputEmailPersonnelAdd" type="email" cssClass="form-control" placeholder="inputEmailPersonnelAdd"/>
    <label for="inputEmailPersonnelAdd">Email</label>
</div>
    <form:errors path="email" cssClass="text-danger"/>
</div>
<div class="col-4">
<div class="form-floating">
    <form:input path="phone" id="inputPhonePersonnelAdd" type="tel" cssClass="form-control" placeholder="inputPhonePersonnelAdd"/>
    <label for="inputPhonePersonnelAdd">Số điện thoại</label>
</div>
    <form:errors path="phone" cssClass="text-danger"/>
</div>
</div>
<div class="row mb-2">
<div class="col">
<div class="form-floating">
    <form:input path="address" id="inputAddressPersonnelAdd" type="text" cssClass="form-control" placeholder="inputAddressPersonnelAdd"/>
    <label for="inputAddressPersonnelAdd">Địa chỉ</label>
</div>
    <form:errors path="address" cssClass="text-danger"/>
</div>
</div>
<div class="row mb-2">
<div class="col">
<div class="form-floating">
    <form:select path="idPosition" id="selectPositionPersonnelAdd" cssClass="form-select">
        <option selected="true" disabled="true">Chọn...</option>
        <c:forEach items="${getPosition}" var="position">
            <option value="${position.id}">${position.name}</option>
        </c:forEach>
    </form:select>
    <label for="selectPositionPersonnelAdd">Chức vụ</label>
</div>
</div>
<div class="col">
<div class="form-floating">
    <form:select path="idDepartment" id="selectDepartmentPersonnelAdd" cssClass="form-select">
        <option selected="true" disabled="true">Chọn...</option>
        <c:forEach items="${getDepartment}" var="department">
            <option value="${department.id}">${department.name}</option>
        </c:forEach>
    </form:select>
    <label for="selectDepartmentPersonnelAdd">Phòng ban</label>
</div>
</div>
</div>
<div class="row mb-2">
<div class="col">
<div class="form-floating">
    <form:select path="role" id="selectRolePersonnelAdd" cssClass="form-select">
        <option selected="true" disabled="true">Chọn...</option>
        <option value="ROLE_ADMIN">ROLE_ADMIN</option>
        <option value="ROLE_MANAGER">ROLE_MANAGER</option>
        <option value="ROLE_STAFF">ROLE_STAFF</option>
    </form:select>
    <label for="selectRolePersonnelAdd">Role</label>
</div>
</div>
</div>
<div class="row mb-3">
<div class="col">
<label for="inputAvatarPersonnelAdd" class="form-label">Hình ảnh</label>
    <form:input path="imageUser" id="inputAvatarPersonnelAdd" cssClass="form-control" type="file"/>
    <form:errors path="imageUser" cssClass="text-danger"/>
</div>
</div>
<div class="text-end">
<a href="${adminAction}/personnel" class="btn btn-outline-primary my-wpx-100 fw-bold">Quay lại</a>
<input type="submit" class="btn btn-outline-danger my-wpx-100 fw-bold" value="Lưu">
</div>
</form:form>
</div>
</div>
-->
