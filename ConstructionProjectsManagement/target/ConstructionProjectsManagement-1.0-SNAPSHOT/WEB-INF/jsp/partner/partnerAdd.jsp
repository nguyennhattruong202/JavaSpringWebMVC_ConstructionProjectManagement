<%-- 
    Document   : insertPartner
    Created on : Sep 23, 2022, 2:42:12 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top">
        Thêm đối tác mới
    </div>
    <div class="p-3">
        <form:form method="post" action="${adminAction}/partner/add" modelAttribute="newPartner">
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">   
                        <form:input path="name" id="inputNamePartnerAdd" type="text" cssClass="form-control" placeholder="inputNamePartnerAdd"/>
                        <label for="inputNamePartnerAdd">Tên đối tác</label>
                        <form:errors path="name" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="phone" id="inputPhonePartnerAdd" type="tel" cssClass="form-control" placeholder="inputPhonePartnerAdd"/>
                        <label for="inputPhonePartnerAdd">Số điện thoại</label>
                        <form:errors path="phone" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating"> 
                        <form:input path="email" id="inputEmailPartnerAdd" type="email" cssClass="form-control" placeholder="inputEmailPartnerAdd"/>
                        <label for="inputEmailPartnerAdd">Email</label>
                        <form:errors path="email" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="website" id="inputWebsitePartnerAdd" type="url" cssClass="form-control" placeholder="inputWebsitePartnerAdd"/>
                        <label for="inputWebsitePartnerAdd">Website</label>
                        <form:errors path="website" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:input path="country" id="inputCountryPartnerAdd" type="text" cssClass="form-control" placeholder="inputCountryPartnerAdd"/>
                        <label for="inputCountryPartnerAdd">Quốc gia</label>
                        <form:errors path="country" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:select path="type" id="selectTypePartnerAdd" cssClass="form-select">
                            <option selected="true" value="0" disabled="true">Chọn:</option>
                            <option value="Tổ chức">Tổ chức</option>
                            <option value="Cá nhân">Cá nhân</option>
                        </form:select>
                        <label for="selectTypePartnerAdd">Loại</label>
                        <form:errors path="type" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="address" id="inputAddressPartnerAdd" type="text" cssClass="form-control" placeholder="inputAddressPartnerAdd"/>
                        <label for="inputAddressPartnerAdd">Địa chỉ</label>
                        <form:errors path="address" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:textarea path="note" id="textareaNotePartnerAdd" type="text" cssClass="form-control" placeholder="textareaNotePartnerAdd"/>
                        <label for="textareaNotePartnerAdd">Ghi chú</label>
                        <form:errors path="note" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/partner/list" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <button type="submit" class="btn btn-outline-danger my-wpx-100">Lưu</button>
            </div>
        </form:form>
    </div>
</div>

