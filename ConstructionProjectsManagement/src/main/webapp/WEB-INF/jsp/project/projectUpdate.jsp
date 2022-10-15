<%-- 
    Document   : projectDetail
    Created on : Sep 30, 2022, 4:35:39 PM
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
        Thông tin dự án
    </div>
    <div class="p-3">
        <form:form method="post" action="${adminAction}/project/${projectById.id}/update" 
                   modelAttribute="projectUpdate" enctype="multipart/form-data">
            <div class="row mb-3">
                <div class="col-3 d-flex align-items-center">
                    <img class="img-fluid" src="${projectById.image}" alt="imageProject">
                </div>
                <div class="col-9">
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <form:input path="name" type="text" cssClass="form-control" id="inputNameProjectUpdate" 
                                            placeholder="inputNameProjectUpdate" value="${projectById.name}"/>
                                <label for="inputNameProjectUpdate">Tên dự án</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <form:input path="location" type="text" cssClass="form-control" id="inputLocationProjectUpdate" 
                                            placeholder="inputLocationProjectUpdate" value="${projectById.location}"/>
                                <label for="inputLocationProjectUpdate">Địa chỉ dự án</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <form:input path="startDate" type="date" cssClass="form-control" id="inputStartDateProjectUpdate" 
                                            placeholder="inputStartDateProjectUpdate" value="${projectById.startDate}"/>
                                <label for="inputStartDateProjectUpdate">Ngày bắt đầu</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <form:input path="finishDate" type="date" cssClass="form-control" id="inputFinishDateProjectUpdate" 
                                            placeholder="inputFinishDateProjectUpdate" value="${projectById.finishDate}"/>
                                <label for="inputFinishDateProjectUpdate">Ngày kết thúc</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <form:select path="idPersonnel" cssClass="form-select" id="selectLeaderProjectUpdate">
                                    <option selected="true" disabled="true">Lựa chọn...</option>
                                    <c:forEach items="${csListForUpdate}" var="projectLeader">
                                        <option value="${projectLeader[0]}">${projectLeader[1]} ${projectLeader[2]}</option>
                                    </c:forEach>
                                </form:select>
                                <label for="selectLeaderProjectUpdate">Trưởng dự án</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <form:input path="maxPerson" type="number" cssClass="form-control" id="inputMaxPersonProjectUpdate" 
                                            placeholder="inputMaxPersonProjectUpdate" value="${projectById.maxPerson}"/>
                                <label for="inputMaxPersonProjectUpdate">Nhân công tối đa</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <form:select path="percent" cssClass="form-select" id="selectPercentProjectUpdate">
                                    <option value="0" selected="true" disabled="true">Lựa chọn...</option>
                                    <c:forEach begin="0" end="10" var="i">
                                        <option value="${i*10}">${i*10}%</option>
                                    </c:forEach>
                                </form:select>
                                <label for="selectPercentProjectUpdate">Tiến độ thực hiện</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <form:select path="idStatus" cssClass="form-select" id="selectStatusProjectUpdate">
                                    <option selected="true" disabled="true">Lựa chọn...</option>
                                    <c:forEach items="${statusListForUpdate}" var="status">
                                        <option value="${status.id}">${status.name}</option>
                                    </c:forEach>
                                </form:select>
                                <label for="selectStatusProjectUpdate">Trạng thái</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <div class="form-floating">
                                <form:textarea path="description" cssClass="form-control" id="textareaDescriptionProjectUpdate" 
                                               placeholder="textareaDescriptionProjectUpdate"/>
                                <label for="textareaDescriptionProjectUpdate">Khái quát dự án</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label class="form-label" for="inputImageProjectUpdate">Hình ảnh dự án</label>
                            <form:input path="imageProject" type="file" cssClass="form-control" id="inputImageProjectUpdate"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/project" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <input type="submit" class="btn btn-outline-danger my-wpx-100" value="Lưu">
            </div>
        </form:form>
    </div>
</div>