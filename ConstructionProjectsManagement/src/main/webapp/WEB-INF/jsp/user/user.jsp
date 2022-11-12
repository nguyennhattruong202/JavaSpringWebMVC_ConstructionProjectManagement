<%-- 
    Document   : user
    Created on : Oct 29, 2022, 8:54:42 AM
    Author     : ACER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<c:url value="/user" var="action"/>

<style>
    #divContainerInfoUser{
        background-color: #ffffff;
        padding: 5px;
    }
    .form-control, .form-select{
        border-radius: 0px;
    }
    .badge{
        background-color: #026aa7;
        color: #ffffff;
        border-radius: 0px;
    }
    hr{
        margin-top: 20px;
    }
    .modal-header{
        background-color: #026aa7;
        color: #ffffff;
        text-transform: uppercase;
        font-weight: bold;
    }
</style>

<div id="divMainContentUser" class="my-main-content-container d-flex justify-content-center">
    <div style="width: 65%">
        <div id="divTitleUser" class="my-titile-container">Thông tin tài khoản</div>
        <div id="divContainerInfoUser">
            <div class="row">
                <div class="col-3">
                    <img class="img-fluid rounded-circle" src="${pageContext.session.getAttribute("currentUser").avatar}" alt="userAvatar" style="height: 150px; width: 150px;">
                </div>
                <div class="col d-flex align-items-center">
                    <div>
                        <h2>${pageContext.session.getAttribute("currentUser").lastName} ${pageContext.session.getAttribute("currentUser").firstName}</h2>
                        <h5><span class="badge">${pageContext.session.getAttribute("currentUser").role}</span></h5>
                    </div>
                </div>
            </div>
            <hr>
            <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="authentication">
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">ID:</div>
                    <div class="col">
                        <form:input path="id" id="id" type="number" cssClass="form-control" disabled="true"/>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">Giới tính:</div>
                    <div class="col">
                        <form:select path="gender" id="gender" cssClass="form-select">
                            <form:option value="" disabled="true" label="---Chọn---"/>
                            <form:option value="Nam" label="Nam"/>
                            <form:option value="Nữ" label="Nữ"/>
                        </form:select>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">Ngày sinh:</div>
                    <div class="col">
                        <form:input path="birthday" id="birthday" type="date" cssClass="form-control"/>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">CCCD/CMND:</div>
                    <div class="col">
                        <form:input path="identity" id="identity" type="text" cssClass="form-control" disabled="true"/>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">Số điện thoại:</div>
                    <div class="col">
                        <form:input path="phone" id="phone" type="text" cssClass="form-control"/>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">Email:</div>
                    <div class="col">
                        <form:input path="email" id="email" type="text" cssClass="form-control"/>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                    <div class="col">
                        <form:input path="address" id="address" type="text" cssClass="form-control"/>
                    </div>
                </div>
                <div id="divActionUser" class="text-end">
                    <button type="button" class="my-button-action">Lưu</button>
                    <button type="button" class="my-button-action" data-bs-toggle="modal" data-bs-target="#modalChangePasswordUser">Đổi mật khẩu</button>
                </div>
            </form:form>
        </div>
    </div>
    <div class="modal fade" id="modalChangePasswordUser">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    Đổi mật khẩu
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form>
                    <div class="modal-body">
                        <div class="row mb-3">
                            <div class="col-5 d-flex align-items-center fw-bold">Mật khẩu hiện tại:</div>
                            <div class="col">
                                <input id="currentPass" type="password" style="border-radius: 0px;" class="form-control">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-5 d-flex align-items-center fw-bold">Mật khẩu mới:</div>
                            <div class="col">
                                <input id="newPass" type="password" style="border-radius: 0px;" class="form-control">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-5 d-flex align-items-center fw-bold">Xác nhận mật khẩu mới:</div>
                            <div class="col">
                                <input type="password" id="confirmPass" style="border-radius: 0px;" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="my-button-action">Lưu</button>
                        <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>