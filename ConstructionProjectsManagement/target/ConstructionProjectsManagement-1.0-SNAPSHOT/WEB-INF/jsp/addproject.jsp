<%-- 
    Document   : addproject
    Created on : Sep 17, 2022, 3:27:31 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h1 class="text-center">THÊM DỰ ÁN</h1>
<form class="row g-3">
    <div class="col-md-12">
        <label for="validationServer04" class="form-label">Hình ảnh</label>
        <br>
        <img src="..." class="rounded" alt="...">
        <button class="btn btn-danger" type="submit">Chọn ảnh</button>
    </div>
    <div class="col-md-3">
        <label for="validationServer01" class="form-label">Tên dự án</label>
        <input type="text" class="form-control is-valid" id="validationServer01" value="..." required>
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>
    <div class="col-md-3">
        <label for="validationServer04" class="form-label">Trưởng dự án</label>
        <select class="form-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback" required>
            <option selected disabled value="">Choose...</option>
            <option>...</option>
        </select>
    </div>
    <div class="col-md-3">
        <label for="validationServer02" class="form-label">Ngày bắt đầu</label>
        <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Example">
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>
    <div class="col-md-3">
        <label for="validationServer02" class="form-label">Ngày kết thúc</label>
        <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Example">
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>
    <div class="col-md-6">
        <label for="validationServer03" class="form-label">Mô tả</label>
        <input type="text" class="form-control is-invalid" id="validationServer03" aria-describedby="validationServer03Feedback" required>
        <div id="validationServer03Feedback" class="invalid-feedback">
            Please input description.
        </div>
    </div>
    <div class="col-md-3">
        <label for="validationServer04" class="form-label">Trạng thái</label>
        <select class="form-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback" required>
            <option selected disabled value="">Choose...</option>
            <option>...</option>
        </select>
        <div id="validationServer04Feedback" class="invalid-feedback">
            Please select a valid status.
        </div>
    </div>
    <div class="col-md-3">
        <label for="validationServer05" class="form-label">%</label>
        <input type="number" class="form-control is-invalid" id="validationServer05" aria-describedby="validationServer05Feedback" required>
        <div id="validationServer05Feedback" class="invalid-feedback">
            Please provide a valid percent.
        </div>
    </div>
    <div class="col-12">
        <div class="form-check">
            <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
            <label class="form-check-label" for="invalidCheck3">
                Agree to terms and conditions
            </label>
            <div id="invalidCheck3Feedback" class="invalid-feedback">
                You must agree before submitting.
            </div>
        </div>
    </div>
    <div class="col-12 text-center">
        <button class="btn btn-primary" type="submit">Tạo dự án</button>
    </div>
</form>
