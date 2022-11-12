<%-- 
    Document   : projectDetail
    Created on : Sep 30, 2022, 4:35:39 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/project/${projectById.id}" var="updateProjectUrl"/>

<div class="my-main-content-container">
    <form:form method="post" action="${updateProjectUrl}" modelAttribute="projectById" enctype="multipart/form-data">
        <div class="my-tool-container d-flex justify-content-end">
            <a href="#" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <button type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lưu">
                <i class="fa-solid fa-floppy-disk"></i>
            </button>
            <button type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
                <i class="fa-solid fa-arrow-rotate-right"></i>
            </button>
        </div>
        <div class="my-titile-container">Chỉnh sửa thông tin dự án</div>
        <div class="my-content-container">
            <div class="text-center" style="margin-bottom: 10px;">
                <img class="img-fluid" style="height: 250px;" src="${projectById.image}" alt="projectImage">
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Mã dự án:</div>
                <div class="col">
                    <form:input path="id" id="id" type="number" cssClass="form-control" disabled="true" readonly="true"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Tên dự án:</div>
                <div class="col">
                    <form:input path="name" id="name" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Ngày bắt đầu:</div>
                <div class="col">
                    <form:input path="startDate" id="startDate" type="date" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Ngày kết thúc:</div>
                <div class="col">
                    <form:input path="finishDate" id="finishDate" type="date" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Số người tối đa:</div>
                <div class="col">
                    <form:input path="maxPerson" id="maxPerson" type="number" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                <div class="col">
                    <form:input path="location" id="location" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Hình ảnh:</div>
                <div class="col">
                    <form:input path="image" id="image" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                <div class="col">
                    <form:input path="percent" id="percent" type="number" cssClass="form-control"/>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                <div class="col">
                    <form:select path="idStatus" id="idStatus" cssClass="form-select">
                        <form:option value="" disabled="true" label="---Chọn ---"/>
                        <form:options items="${status}"/>
                    </form:select>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Trưởng dự án:</div>
                <div class="col">
                    <form:select path="idPersonnel" id="idPersonnel" cssClass="form-select">
                        <form:option value="" disabled="true" label="---Chọn ---"/>
                        <form:options items="${CS}"/>
                    </form:select>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Mô tả dự án:</div>
                <div class="col">
                    <form:textarea path="description" id="description" cssClass="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col-2 d-flex align-items-center">Ngày tạo:</div>
                <div class="col">
                    <form:input path="createdDate" id="createdDate" type="datetime" cssClass="form-control" disabled="true"/>
                </div>
            </div>
        </div>
    </form:form>
</div>