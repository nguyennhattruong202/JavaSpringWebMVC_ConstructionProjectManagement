<%-- 
    Document   : projectAdd
    Created on : Oct 8, 2022, 11:13:37 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .form-control, .form-select{
        border-radius: 0px;
    }
</style>
<c:url value="/admin/project/add" var="addProjectUrl"/>
<c:url value="/admin/project" var="projectsUrl"/>

<div id="mainContainer" class="my-main-content-container">
    <form>
        <div id="toolContainer" class="my-tool-container d-flex justify-content-end">
            <a href="${projectsUrl}" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <button type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
                <i class="fa-solid fa-floppy-disk"></i>
            </button>
            <a href="${addProjectUrl}" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
                <i class="fa-solid fa-arrow-rotate-right"></i>
            </a>
        </div>
        <div id="titleContainer" class="my-titile-container">Thêm dự án mới</div>
        <div id="contentContainer" class="my-content-container" style="margin-bottom: 26px;">
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Tên dự án:</div>
                <div class="col">
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Ngày bắt đầu:</div>
                <div class="col">
                    <input type="date" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Ngày kết thúc:</div>
                <div class="col">
                    <input type="date" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Số người tối đa:</div>
                <div class="col">
                    <input type="number" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                <div class="col">
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Hình ảnh:</div>
                <div class="col">
                    <input type="file" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                <div class="col">
                    <input type="number" class="form-control">
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                <div class="col">
                    <select class="form-select">
                        <option value="">---Chọn ---</option>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-bottom: 10px;">
                <div class="col-2 d-flex align-items-center">Trưởng dự án:</div>
                <div class="col">
                    <select class="form-select">
                        <option value="">---Chọn ---</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-2 d-flex align-items-center">Mô tả dự án:</div>
                <div class="col">
                    <textarea class="form-control"></textarea>
                </div>
            </div>
        </div>
    </form>
</div>
