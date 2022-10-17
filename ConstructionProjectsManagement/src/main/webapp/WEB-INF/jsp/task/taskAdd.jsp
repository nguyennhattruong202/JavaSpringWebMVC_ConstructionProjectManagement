<%-- 
    Document   : taskAdd
    Created on : Oct 6, 2022, 4:43:22 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin" var="action"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 h5 bg-primary text-white rounded-top fw-bold text-uppercase">Thêm công việc mới</div>
    <div class="p-3">
        <form:form method="post" action="${action}/project/category/${category.id}/task/add" modelAttribute="newTask">
            <div class="row mb-3">
                <div class="col">
                    <label for="inputNameTaskAdd" class="form-label">Tên công việc</label>
                    <form:input path="name" id="inputNameTaskAdd" type="text" cssClass="form-control"/>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label for="inputStartDateTaskAdd" class="form-label">Ngày bắt đầu</label>
                    <form:input path="startDate" id="inputStartDateTaskAdd" type="date" cssClass="form-control"/>
                </div>
                <div class="col">
                    <label for="inputFinishDateTaskAdd" class="form-label">Ngày kết thúc</label>
                    <form:input path="finishDate" id="inputFinishDateTaskAdd" type="date" cssClass="form-control"/>
                </div>
                <div class="col">
                    <label for="selectPercentTaskAdd" class="form-label">Tiến độ</label>
                    <form:select path="percent" id="selectPercentTaskAdd" cssClass="form-select">
                        <c:forEach begin="0" end="10" var="i">
                            <option selected="selected" value="${i*10}">${i*10}%</option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">   
                    <label for="selectPriorityTaskAdd" class="form-label">Dộ ưu tiên</label>
                    <form:select path="priority" id="selectPriorityTaskAdd" cssClass="form-select">
                        <option selected="selected" value="0">Không có</option>
                        <option value="Cao">Cao</option>
                        <option value="Trung bình">Trung bình</option>
                        <option value="Thấp">Thấp</option>
                    </form:select>
                </div>
                <div class="col">   
                    <label for="selectPersonnelTaskAdd" class="form-label">Người thực hiện</label>
                    <form:select path="idPersonnel" id="selectPersonnelTaskAdd" cssClass="form-select">
                        <option selected="selected" disabled="true">Chọn...</option>
                        <c:forEach items="${listPersonnel}" var="people">
                            <option value="${people[0]}">${people[2]} ${people[3]}</option>
                        </c:forEach>
                    </form:select>
                </div>
                <div class="col">   
                    <label for="selectStatusTaskAdd" class="form-label">Trạng thái</label>
                    <form:select path="idStatus" id="selectStatusTaskAdd" cssClass="form-select">
                        <option selected="selected" disabled="true">Chọn...</option>
                        <c:forEach items="${listStatus}" var="status">
                            <option value="${status.id}">${status.name}</option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">   
                    <label for="textareaDescriptionTaskAdd" class="form-label">Khái quát công việc</label>
                    <form:textarea path="description" cssClass="form-control" id="textareaDescriptionTaskAdd"/>
                </div>
            </div>
            <div class="text-end">
                <a href="${action}/project/category/${category.id}" class="btn btn-outline-primary my-wpx-100">Quay lại</a>
                <button type="submit" class="btn btn-outline-danger my-wpx-100">Lưu</button>
            </div>
        </form:form>
    </div>
</div>
