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
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Thêm nhân sự mới
    </div>
    <div class="p-3">
        <form:form method="post" action="${adminAction}/personnel/add" modelAttribute="personnel" enctype="multipart/form-data">
            <div class="row mb-2">
                <div class="col-8">
                    <div class="form-floating">
                        <form:input path="lastName" id="inputLastNamePersonnelAdd" type="text" cssClass="form-control" placeholder="inputLastNamePersonnelAdd"/>
                        <label for="inputLastNamePersonnelAdd">Họ và tên lót</label>
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-floating">
                        <form:input path="firstName" id="inputFirstNamePersonnelAdd" type="text" cssClass="form-control" placeholder="inputFirstNamePersonnelAdd"/>
                        <label for="inputFirstNamePersonnelAdd">Tên</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:select path="gender" id="selectGenderPersonnelAdd" cssClass="form-select">
                            <option value="0" selected="true" disabled="true">Chọn...</option>
                            <option value="1">Nam</option>
                            <option value="2">Nữ</option>
                        </form:select>
                        <label for="selectGenderPersonnelAdd">Giới tính</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:input path="birthday" id="inputBirthdayPersonnelAdd" type="date" cssClass="form-control" placeholder="inputBirthdayPersonnelAdd"/>
                        <label for="inputBirthdayPersonnelAdd">Ngày sinh</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:input path="identity" id="inputIdentityPersonnelAdd" type="text" cssClass="form-control" placeholder="inputIdentityPersonnelAdd"/>
                        <label for="inputIdentityPersonnelAdd">CMND/CCCD</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-8">
                    <div class="form-floating">
                        <form:input path="email" id="inputEmailPersonnelAdd" type="email" cssClass="form-control" placeholder="inputEmailPersonnelAdd"/>
                        <label for="inputEmailPersonnelAdd">Email</label>
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-floating">
                        <form:input path="phone" id="inputPhonePersonnelAdd" type="tel" cssClass="form-control" placeholder="inputPhonePersonnelAdd"/>
                        <label for="inputPhonePersonnelAdd">Số điện thoại</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="address" id="inputAddressPersonnelAdd" type="text" cssClass="form-control" placeholder="inputAddressPersonnelAdd"/>
                        <label for="inputAddressPersonnelAdd">Địa chỉ</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:select path="idPosition" id="selectPositionPersonnelAdd" cssClass="form-select">
                            <option value="0" selected="true" disabled="true">Chọn...</option>
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
                            <option value="0" selected="true" disabled="true">Chọn...</option>
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
                            <option value="0" selected="true" disabled="true">Chọn...</option>
                            <c:forEach items="${getRole}" var="i">
                                <option value="${i}">${i}</option>
                            </c:forEach>
                        </form:select>
                        <label for="selectRolePersonnelAdd">Role</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label for="inputAvatarPersonnelAdd" class="form-label">Hình ảnh</label>
                    <form:input path="personnelImage" id="inputAvatarPersonnelAdd" cssClass="form-control" type="file"/>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/personnel" class="btn btn-outline-primary my-wpx-100 fw-bold">Quay lại</a>
                <input type="submit" class="btn btn-outline-danger my-wpx-100 fw-bold" value="Lưu">
            </div>
            </form:form>
        </div>
    </div>