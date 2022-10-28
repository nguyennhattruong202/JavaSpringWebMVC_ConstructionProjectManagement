<%-- 
    Document   : partnerUpdate
    Created on : Oct 6, 2022, 6:40:28 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #divContentPartnerUpdate{
        padding: 10px;
        margin-left: 15%;
    }
    #divTitlePartnerUpdate{
        background-color: #026aa7;
        text-transform: uppercase;
        color: #ffffff;
        padding:5px;
        font-weight: bold;
        border: 1px solid #026aa7;
    }
    #divToolPartnerUpdate{
        margin-bottom: 10px;
    }
    #name, #phone, #email, #website, #country, #type, #address, #note, #id{
        border-radius: 0px;
    }
    .form-label{
        font-weight: bold;
    }
    .row{
        margin-bottom: 10px;
    }
</style>
<c:url value="/admin" var="adminAction"/>
<div id="divContentPartnerUpdate">
    <form:form method="post" action="${adminAction}/partner/edit" modelAttribute="partner">
        <div id="divToolPartnerUpdate" class="d-flex justify-content-end">
            <a href="${adminAction}/partner/list" id="aCancelPartnerUpdate" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thoát">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <button type="submit" class="my-button" id="buttonPartnerUpdate" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
                <i class="fa-solid fa-floppy-disk"></i>
            </button>
            <a href="#" id="aResetPartnerUpdate" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Làm lại">
                <i class="fa-solid fa-arrow-rotate-right"></i>
            </a>
        </div>
        <div id="divTitlePartnerUpdate">Chỉnh sửa thông tin đối tác</div>
        <div class="p-2 bg-body">
            <div class="row">
                <div class="col">
                    <label for="id" class="form-label">ID</label>
                    <form:input path="id" id="id" type="text" cssClass="form-control" disabled="true"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="name" class="form-label">Tên đối tác</label>
                    <form:input path="name" id="name" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="phone" class="form-label">Số điện thoại</label>
                    <form:input path="phone" id="phone" type="tel" cssClass="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="email" class="form-label">Email</label>
                    <form:input path="email" id="email" type="email" cssClass="form-control"/>
                </div>
                <div class="col">
                    <label for="website" class="form-label">Website</label>
                    <form:input path="website" id="website" type="url" cssClass="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="country" class="form-label">Quốc gia</label>
                    <form:input path="country" id="country" type="text" cssClass="form-control"/>
                </div>
                <div class="col">
                    <label for="type" class="form-label">Loại</label>
                    <form:select path="type" id="type" cssClass="form-select">
                        <form:option value="" disabled="true" label="---Chọn---"/>
                        <form:option value="Tổ chức" label="Tổ chức"/>
                        <form:option value="Cá nhân" label="Cá nhân"/>
                    </form:select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="address" class="form-label">Địa chỉ</label>
                    <form:input path="address" id="address" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="note" class="form-label">Ghi chú</label>
                    <form:textarea path="note" id="note" type="text" cssClass="form-control"/>
                </div>
            </div>
        </div>
    </form:form>
</div>
