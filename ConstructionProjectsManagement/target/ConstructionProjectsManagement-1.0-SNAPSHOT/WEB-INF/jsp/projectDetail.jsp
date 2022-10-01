<%-- 
    Document   : projectDetail
    Created on : Sep 30, 2022, 4:35:39 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mb-3 mt-3">
    <div class="rounded-top p-2 bg-primary text-white text-uppercase h5 fw-bold">Thong tin du an</div>
    <div class="p-3">
        <div class="row">
            <div class="col-3 d-flex align-items-center">
                <img class="img-fluid rounded" src="https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"
                     alt="imageOfProject">
            </div>
            <div class="col-9">
                <div class="row mb-2">
                    <div class="col">
                        <label for="inputNameProjectDetail" class="form-label">Ten du an</label>
                        <input type="text" class="form-control" id="inputNameProjectDetail">
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <label for="inputLocationProjectDetail" class="form-label">Dia diem</label>
                        <input type="text" class="form-control" id="inputLocationProjectDetail">
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <label for="inputStartDateProjectDetail" class="form-label">Ngay bat dau</label>
                        <input type="date" class="form-control" id="inputStartDateProjectDetail">
                    </div>
                    <div class="col">
                        <label for="inputFinishDateProjectDetail" class="form-label">Ngay ket thuc</label>
                        <input type="date" class="form-control" id="inputFinishDateProjectDetail">
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <label for="inputMaxPersonProjectDetail" class="form-label">Nhan cong toi da</label>
                        <input type="number" class="form-control" id="inputMaxPersonProjectDetail">
                    </div>
                    <div class="col">
                        <label for="inputStatusProjectDetail" class="form-label">Trang thai</label>
                        <input type="text" class="form-control" id="inputStatusProjectDetail">
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <label for="textareaDescriptionProjectDetail" class="form-label">Khai quat du an</label>
                        <textarea class="form-control" id="textareaDescriptionProjectDetail"></textarea>
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
            </div>
        </div>
    </div>
</div>

