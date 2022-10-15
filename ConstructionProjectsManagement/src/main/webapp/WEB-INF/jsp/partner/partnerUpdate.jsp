<%-- 
    Document   : partnerUpdate
    Created on : Oct 6, 2022, 6:40:28 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top">
        Chỉnh sửa thông tin đối tác
    </div>
    <div class="p-3">
        <form:form method="post" action="${adminAction}/partner/${partnerById.id}/update" modelAttribute="partner">
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">   
                        <form:input path="name" id="inputNamePartnerUpdate" type="text" 
                                    cssClass="form-control" placeholder="inputNamePartnerUpdate"
                                    value="${partnerById.name}"/>
                        <label for="inputNamePartnerUpdate">Tên đối tác</label>
                        <form:errors path="name" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="phone" id="inputPhonePartnerUpdate" type="tel" 
                                    cssClass="form-control" placeholder="inputPhonePartnerUpdate"
                                    value="${partnerById.phone}"/>
                        <label for="inputPhonePartnerUpdate">Số điện thoại</label>
                        <form:errors path="phone" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating"> 
                        <form:input path="email" id="inputEmailPartnerUpdate" type="email" 
                                    cssClass="form-control" placeholder="inputEmailPartnerUpdate"
                                    value="${partnerById.email}"/>
                        <label for="inputEmailPartnerUpdate">Email</label>
                        <form:errors path="email" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="website" id="inputWebsitePartnerUpdate" type="url" 
                                    cssClass="form-control" placeholder="inputWebsitePartnerUpdate"
                                    value="${partnerById.website}"/>
                        <label for="inputWebsitePartnerUpdate">Website</label>
                        <form:errors path="website" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:input path="country" id="inputCountryPartnerUpdate" type="text" 
                                    cssClass="form-control" placeholder="inputCountryPartnerUpdate"
                                    value="${partnerById.country}"/>
                        <label for="inputCountryPartnerUpdate">Quốc gia</label>
                        <form:errors path="country" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:select path="type" id="selectTypePartnerUpdate" cssClass="form-select">
                            <option selected="true" value="0" disabled="true">Chọn:</option>
                            <option value="Tổ chức">Tổ chức</option>
                            <option value="Cá nhân">Cá nhân</option>
                        </form:select>
                        <label for="selectTypePartnerUpdate">Loại</label>
                        <form:errors path="type" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="address" id="inputAddressPartnerUpdate" type="text" 
                                    cssClass="form-control" placeholder="inputAddressPartnerUpdate"
                                    value="${partnerById.address}"/>
                        <label for="inputAddressPartnerUpdate">Địa chỉ</label>
                        <form:errors path="address" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:textarea path="note" id="textareaNotePartnerUpdate" type="text" 
                                       cssClass="form-control" placeholder="textareaNotePartnerUpdate"/>
                        <label for="textareaNotePartnerUpdate">Ghi chú</label>
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
