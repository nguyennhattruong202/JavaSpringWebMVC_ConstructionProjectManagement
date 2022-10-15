<%-- 
    Document   : projectAdd
    Created on : Oct 8, 2022, 11:13:37 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api/project" var="endpoint" />
<c:url value="/admin" var="adminAction" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Thêm dự án mới
    </div>
    <div class="p-3">
        <form:form method="post" action="${adminAction}/project/add" modelAttribute="newProject" enctype="multipart/form-data">
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="name" type="text" cssClass="form-control" id="inputNameProjectAdd" 
                                    placeholder="inputNameProjectAdd"/>
                        <label for="inputNameProjectAdd">Tên dự án</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="location" type="text" cssClass="form-control" id="inputLocationProjectAdd" 
                                    placeholder="inputLocationProjectAdd"/>
                        <label for="inputLocationProjectAdd">Địa chỉ dự án</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="startDate" type="date" cssClass="form-control" id="inputStartDateProjectAdd" 
                                    placeholder="inputStartDateProjectAdd"/>
                        <label for="inputStartDateProjectAdd">Ngày bắt đầu</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:input path="finishDate" type="date" cssClass="form-control" id="inputFinishDateProjectAdd" 
                                    placeholder="inputFinishDateProjectAdd"/>
                        <label for="inputFinishDateProjectAdd">Ngày kết thúc</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:select path="idPersonnel" cssClass="form-select" id="selectLeaderProjectAdd">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <c:forEach items="${CSListForProjectAdd}" var="projectLeader">
                                <option value="${projectLeader[0]}">${projectLeader[1]} ${projectLeader[2]}</option>
                            </c:forEach>
                        </form:select>
                        <label for="selectLeaderProjectAdd">Trưởng dự án</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <form:input path="maxPerson" type="number" cssClass="form-control" id="inputMaxPersonProjectAdd" 
                                    placeholder="inputMaxPersonProjectAdd"/>
                        <label for="inputMaxPersonProjectAdd">Nhân công tối đa</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:select path="percent" cssClass="form-select" id="selectPercentProjectAdd">
                            <option value="0" selected="true" disabled="true">Lựa chọn...</option>
                            <c:forEach begin="0" end="10" var="i">
                                <option value="${i*10}">${i*10}%</option>
                            </c:forEach>
                        </form:select>
                        <label for="selectPercentProjectAdd">Tiến độ thực hiện</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <form:select path="idStatus" cssClass="form-select" id="selectStatusProjectAdd">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <c:forEach items="${statusListForProjectAdd}" var="status">
                                <option value="${status.id}">${status.name}</option>
                            </c:forEach>
                        </form:select>
                        <label for="selectStatusProjectAdd">Trạng thái</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-floating">
                        <form:textarea path="description" cssClass="form-control" id="textareaDescriptionProjectAdd" 
                                       placeholder="textareaDescriptionProjectAdd"/>
                        <label for="textareaDescriptionProjectAdd">Khái quát dự án</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label" for="inputImageProjectAdd">Hình ảnh dự án</label>
                    <form:input path="imageProject" type="file" cssClass="form-control" id="inputImageProjectAdd"/>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/project" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <input type="submit" class="btn btn-outline-danger my-wpx-100" value="Lưu">
            </div>
        </form:form>
    </div>
</div>
