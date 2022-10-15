<%-- 
    Document   : updateproject
    Created on : Sep 17, 2022, 4:17:46 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api" var="adminEndpoint" />
<c:url value="/admin" var="adminAction" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Chỉnh sửa hạng mục thi công
    </div>
    <div class="p-3">
        <form>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="inputNameCategoryUpdate" 
                               placeholder="inputNameCategoryUpdate">
                        <label for="inputNameCategoryUpdate">Tên hạng mục thi công</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <input type="date" class="form-control" id="inputStartDateCategoryUpdate" 
                               placeholder="inputStartDateCategoryUpdate">
                        <label for="inputStartDateCategoryUpdate">Ngày bắt đầu</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <input type="date" class="form-control" id="inputFinishDateCategoryUpdate" 
                               placeholder="inputFinishDateCategoryUpdate"/>
                        <label for="inputFinishDateCategoryUpdate">Ngày kết thúc</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <select class="form-select" id="selectLeaderCategoryUpdate">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <option value="1">Option 1</option>
                        </select>
                        <label for="selectLeaderCategoryUpdate">Trưởng hạng mục thi công</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <select class="form-select" id="selectStatusCategoryUpdate">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <c:forEach items="${status}" var="status">
                                <option value="${status.id}">${status.name}</option>
                            </c:forEach>
                        </select>
                        <label for="selectStatusCategoryUpdate">Trạng thái</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <textarea type="text" class="form-control" id="inputDescriptionCategoryUpdate" 
                                  placeholder="inputDescriptionCategoryUpdate"></textarea>
                        <label for="inputDescriptionCategoryUpdate">Khái quát hạng mục thi công</label>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/project/${projectById.id}/categories" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <button type="button" class="btn btn-outline-danger my-wpx-100">Lưu</button>
            </div>
        </form>
    </div>
</div>
