<%-- 
    Document   : participationUpdate
    Created on : Oct 14, 2022, 3:23:00 PM
    Author     : ACER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="adminAction"/>

<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Chỉnh sửa thông tin tham gia dự án: ${project.name}
    </div>
    <div class="p-3">
        <c:if test="${updateParticipation == true}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                </svg>
                Cập nhật thành công!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <c:if test="${updateParticipation == true}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg>
                Cập nhật thất bại!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <form:form method="post" action="${adminAction}/project/${project.id}/participation/${participation.id}" modelAttribute="newParticipation">
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="id" type="number" cssClass="form-control bg-body" id="inputIdParticipationUpdate" readonly="true" value="${participation.id}"/>
                        <label for="inputIdParticipationUpdate">Mã tham gia</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="startDate" type="date" cssClass="form-control" id="inputStartDateParticipationUpdate" value="${participation.startDate}"/>
                        <label for="inputStartDateParticipationUpdate">Ngày bắt đầu</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="position" type="text" cssClass="form-control" id="inputPositionParticipationUpdate" value="${participation.position}"/>
                        <label for="inputPositionParticipationUpdate">Vai trò</label>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/project/${project.id}/personnel" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <input type="submit" class="btn btn-outline-danger my-wpx-100" value="Lưu">
            </div>
        </form:form>
    </div>
</div>
