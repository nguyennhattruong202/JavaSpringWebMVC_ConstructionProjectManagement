<%-- 
    Document   : addproject
    Created on : Sep 17, 2022, 3:27:31 PM
    Author     : DELL
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api" var="endpoint" />
<c:url value="/admin" var="adminAction" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Thêm hạng mục thi công mới
    </div>
    <div class="p-3">
        <form>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="inputNameCategoryAdd" 
                               placeholder="inputNameCategoryAdd">
                        <label for="inputNameCategoryAdd">Tên hạng mục thi công</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <input type="date" class="form-control" id="inputStartDateCategoryAdd" 
                               placeholder="inputStartDateCategoryAdd">
                        <label for="inputStartDateCategoryAdd">Ngày bắt đầu</label>
                    </div>
                </div> 
                <div class="col">
                    <div class="form-floating">
                        <input type="date" class="form-control" id="inputFinishDateCategoryAdd" 
                               placeholder="inputFinishDateCategoryAdd"/>
                        <label for="inputFinishDateCategoryAdd">Ngày kết thúc</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <select class="form-select" id="selectLeaderCategoryAdd">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <option value="1">Option 1</option>
                        </select>
                        <label for="selectLeaderCategoryAdd">Trưởng hạng mục thi công</label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-floating">
                        <select class="form-select" id="selectStatusCategoryAdd">
                            <option selected="true" disabled="true">Lựa chọn...</option>
                            <c:forEach begin="1" end="10" var="status">
                                <option value="${status}">Status ${status}</option>
                            </c:forEach>
                        </select>
                        <label for="selectStatusCategoryAdd">Trạng thái</label>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <div class="form-floating">
                        <textarea type="text" class="form-control" id="inputDescriptionCategoryAdd" 
                                  placeholder="inputDescriptionCategoryAdd"></textarea>
                        <label for="inputDescriptionCategoryAdd">Khái quát hạng mục thi công</label>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <a href="${adminAction}/project" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <input type="button" class="btn btn-outline-danger my-wpx-100" value="Lưu">
            </div>
        </form>
    </div>
</div>