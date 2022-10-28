<%-- 
    Document   : detailPersonnel
    Created on : Sep 27, 2022, 1:40:08 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div class="my-main-content-container">
    <form:form method="post" action="${adminAction}/personnel/${personnelById.id}/update" modelAttribute="personnelById" enctype="multipart/form-data">
        <div class="d-flex justify-content-end my-tool-container">
            <a href="${adminAction}/personnel" id="aCancelPersonnelUpdate" class="my-button text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <button id="buttonSavePersonnelUpdate" type="submit" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lưu">
                <i class="fa-solid fa-floppy-disk"></i>
            </button>
            <a href="${adminAction}/personnel/${personnelById.id}/update" id="aResetPersonnelUpdate" class="my-button text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
                <i class="fa-solid fa-arrow-rotate-right"></i>
            </a>
        </div>
        <div class="my-titile-container">Cập nhật thông tin nhân sự</div>
        <div style="padding: 10px; background-color: #ffffff; border: 1px solid #DEE2E6;">
            <div class="row">
                <div class="col-3 d-flex justify-content-center">
                    <img class="img-fluid rounded shadow" style="height: 250px; width: 220px;" src="${personnelById.avatar}"  alt="userImagePersinnelUpdate">
                </div>
                <div class="col">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">ID:</div>
                        <div class="col">
                            <form:input path="id" id="id" type="number" cssClass="form-control" cssStyle="border-radius: 0px;" disabled="true"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Họ và tên lót:</div>
                        <div class="col">
                            <form:input path="lastName" id="lastName" type="text" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Tên:</div>
                        <div class="col">
                            <form:input path="firstName" id="firstName" type="text" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Giới tính:</div>
                        <div class="col">
                            <form:select path="gender" id="gender" cssClass="form-select" cssStyle="border-radius: 0px;">
                                <form:option value="" disabled="true" label="---Chọn---"/>
                                <form:option value="Nam" label="Nam"/>
                                <form:option value="Nữ" label="Nữ"/>
                            </form:select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Ngày sinh:</div>
                        <div class="col">
                            <form:input path="birthday" id="birthday" type="date" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">CCCD/CMND:</div>
                        <div class="col">
                            <form:input path="identity" id="identity" type="text" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Email:</div>
                        <div class="col">
                            <form:input path="email" id="email" type="email" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Số điện thoại:</div>
                        <div class="col">
                            <form:input path="phone" id="phone" type="tel" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Địa chỉ:</div>
                        <div class="col">
                            <form:input path="address" id="address" type="text" cssClass="form-control" cssStyle="border-radius: 0px;"/>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Chức vụ:</div>
                        <div class="col">
                            <form:select path="idPosition" id="idPosition" cssClass="form-select" cssStyle="border-radius: 0px;">
                                <form:option value="" disabled="true" label="---Chọn---"/>
                                <form:options items="${getPosition}"/>
                            </form:select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Phòng ban:</div>
                        <div class="col">
                            <form:select path="idDepartment" id="idDepartment" cssClass="form-select" cssStyle="border-radius: 0px;">
                                <form:option value="" disabled="true" label="---Chọn---"/>
                                <form:options items="${getDepartment}"/>
                            </form:select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center fw-bold">Role:</div>
                        <div class="col">
                            <form:select path="role" id="role" cssClass="form-select" cssStyle="border-radius: 0px;">
                                <form:option value="" disabled="true" label="---Chọn---"/>
                                <form:option value="ROLE_ADMIN" label="ROLE_ADMIN"/>
                                <form:option value="ROLE_MANAGER" label="ROLE_MANAGER"/>
                                <form:option value="ROLE_STAFF" label="ROLE_STAFF"/>
                            </form:select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>