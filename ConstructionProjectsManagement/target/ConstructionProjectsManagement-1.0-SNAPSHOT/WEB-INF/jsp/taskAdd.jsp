<%-- 
    Document   : taskAdd
    Created on : Oct 6, 2022, 4:43:22 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 h5 bg-primary text-white rounded-top fw-bold">Them cong viec</div>
    <div class="p-3">
        <div class="row mb-3">
            <div class="col">
                <label for="inputNameTask" class="form-label">Ten cong viec</label>
                <input id="inputNameTask" type="text" class="form-control">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <label for="inputStartDateTask" class="form-label">Ngay bat dau</label>
                <input id="inputStartDateTask" type="date" class="form-control">
            </div>
            <div class="col">
                <label for="inputFinishDateTask" class="form-label">Ngay ket thuc</label>
                <input id="inputFinishDateTask" type="date" class="form-control">
            </div>
            <div class="col">
                <label for="selectPercentTask" class="form-label">Tien do</label>
                <select id="selectPercentTask" class="form-select">
                    <c:forEach begin="0" end="10" var="i">
                        <option selected="selected" value="${i*10}">${i*10}%</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">   
                <label for="selectPriorityTask" class="form-label">Do uu tien</label>
                <select id="selectPriorityTask" class="form-select">
                    <option selected="selected" value="0">Khong co</option>
                    <option value="1">Cao</option>
                    <option value="2">Trung binh</option>
                    <option value="3">Thap</option>
                </select>
            </div>
            <div class="col">   
                <label for="selectPersonnelTask" class="form-label">Nguoi thuc hien</label>
                <select id="selectPersonnelTask" class="form-select">
                    <option selected="selected" value="0">1</option>
                    <option value="1">2</option>
                    <option value="2">3</option>
                    <option value="3">4</option>
                </select>
            </div>
            <div class="col">   
                <label for="selectStatusTask" class="form-label">Trang thai</label>
                <select id="selectStatusTask" class="form-select">
                    <option selected="selected" value="0">1</option>
                    <option value="1">2</option>
                    <option value="2">3</option>
                    <option value="3">4</option>
                </select>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">   
                <label for="textareaDescriptionTask" class="form-label">Khai quat cong viec</label>
                <textarea class="form-control" id="textareaDescriptionTask"></textarea>
            </div>
        </div>
        <div class="text-end">
            <button type="button" class="btn btn-outline-primary my-wpx-100">Quay lai</button>
            <button type="button" class="btn btn-outline-danger my-wpx-100">Them</button>
        </div>
    </div>
</div>
