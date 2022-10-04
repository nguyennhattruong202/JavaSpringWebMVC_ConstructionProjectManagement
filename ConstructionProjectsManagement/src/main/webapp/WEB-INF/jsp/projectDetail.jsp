<%-- 
    Document   : projectDetail
    Created on : Sep 30, 2022, 4:35:39 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/project" var="action"/>
<div class="shadow rounded bg-body mb-3 mt-3">
    <div class="rounded-top p-2 bg-primary text-white text-uppercase h5 fw-bold">Thong tin du an</div>
    <div class="p-3">
        <div class="row">
            <div class="col-3 d-flex align-items-center">
                <img class="img-fluid rounded" src="${projectById.image}"
                     alt="imageOfProject">
            </div>
            <div class="col-9">
                <form>
                    <div class="row mb-2">
                        <div class="col">
                            <label for="inputNameProjectDetail" class="form-label">Ten du an</label>
                            <input type="text" class="form-control" id="inputNameProjectDetail" value="${projectById.name}">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <label for="inputLocationProjectDetail" class="form-label">Dia diem</label>
                            <input type="text" class="form-control" id="inputLocationProjectDetail" value="${projectById.location}">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <label for="inputStartDateProjectDetail" class="form-label">Ngay bat dau</label>
                            <input type="date" class="form-control" id="inputStartDateProjectDetail" value="${projectById.startDate}">
                        </div>
                        <div class="col">
                            <label for="inputFinishDateProjectDetail" class="form-label">Ngay ket thuc</label>
                            <input type="date" class="form-control" id="inputFinishDateProjectDetail" value="${projectById.finishDate}">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <label for="inputMaxPersonProjectDetail" class="form-label">Nhan cong toi da</label>
                            <input type="number" class="form-control" id="inputMaxPersonProjectDetail" value="${projectById.maxPerson}">
                        </div>
                        <div class="col">
                            <label for="selectProjectLeaderProjectDetail" class="form-label">Truong du an</label>
                            <select class="form-select" id="selectProjectLeaderProjectDetail">
                                <option value="0" disabled="disabled" selected="selected">Choose...</option>
                                <c:forEach items="${CSList}" var="projectLeader">
                                    <option value="${projectLeader[0]}">${projectLeader[1]} ${projectLeader[2]}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col">
                            <label for="selectStatusProjectDetail" class="form-label">Trang thai</label>
                            <select class="form-select" id="selectStatusProjectDetail">
                                <option value="0" disabled="disabled" selected="selected">Choose...</option>
                                <c:forEach items="${statusList}" var="statusProject">
                                    <option value="${statusProject.id}">${statusProject.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <label for="textareaDescriptionProjectDetail" class="form-label">Khai quat du an</label>
                            <textarea class="form-control" id="textareaDescriptionProjectDetail">${projectById.description}</textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="inputImageProjectDetail" class="form-label">Anh du an</label>
                            <input type="file" class="form-control" id="inputImageProjectDetail">
                        </div>
                    </div>
                    <div class="text-end">
                        <a href="<c:url value="/admin/project"/>" class="btn btn-outline-primary fw-bold my-wpx-100">
                            <i class="fas fa-arrow-left me-2"></i>
                            Back
                        </a>
                        <button type="button" class="btn btn-outline-danger my-wpx-100 fw-bold">
                            <i class="fas fa-save me-2"></i>
                            Save
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

