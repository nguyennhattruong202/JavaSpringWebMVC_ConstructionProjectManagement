<%-- 
    Document   : projectmanagement
    Created on : Sep 17, 2022, 10:53:26 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center">QUẢN LÝ DỰ ÁN</h1>

<div class="row">
    <div class="mb-3 col-3">
        <form class="form-inline" action="<c:url value="/admin/projectmanagement" />">
            <label for="formGroupExampleInput" class="form-label">Tên dự án</label>
            <input name="kw" type="text" class="form-control" id="formGroupExampleInput" placeholder="Nhập...">
        </form>
    </div>
    <div class="mb-3 col-3">
        <label for="formGroupExampleInput" class="form-label">Ngày bắt đầu</label>
        <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Example">
    </div>
    <div class="mb-3 col-3">
        <label for="formGroupExampleInput" class="form-label">Ngày kết thúc</label>
        <input type="date" class="form-control" id="formGroupExampleInput" placeholder="Example">
    </div>
    <div class="mb-3 col-3">
        <label for="formGroupExampleInput" class="form-label">Trạng thái</label>
        <select class="form-select" aria-label="Default select example">
            <option selected>Open this select menu</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
        </select>
    </div>
</div>

<button type="button" class="btn btn-outline-primary">Tìm kiếm</button>


<table class="table">
    <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">Hình ảnh</th>
            <th scope="col">Tên dự án</th>
            <th scope="col">Mô tả</th>
            <th scope="col">Trưởng dự án</th>
            <th scope="col">Ngày bắt đầu</th>
            <th scope="col">Ngày kết thúc</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">%</th>
            <th scope="col">Tình trạng</th>
            <th scope="col">Chức năng</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${projects}" var="p">
            <tr>
                <td>${p[0]}</td>
                <td>
                    <img src="..." class="rounded" alt="...">
                </td>
                <td>${p[2]}</td>
                <td>${p[3]}</td>
                <td>${p[4]}</td>
                <td>${p[5]}</td>
                <td>${p[6]}</td>
                <td>${p[7].name}</td>
                <td>${p[8]}</td>
                <td>${p[9]}</td>
                <td>
                    <a href="<c:url value="/admin/updateproject"/>">
                        <button type="button" class="btn btn-primary btn-sm">Sửa</button>
                    </a>
                    <button type="button" class="btn btn-secondary btn-sm">Xóa</button>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a href="<c:url value="/admin/addproject"/>">
    <button type="button" class="btn btn-danger">Thêm</button>
</a>

<ul class="pagination">
    <c:forEach begin="1" end="${Math.ceil(projectCounter/8)}" var="i">
        <c:url value="/admin/projectmanagement" var="c">
            <c:param value="${i}" name="page"  />
        </c:url>
        <li class="page-item"><a class="page-link" href="${c}">${i}</a></li>
        </c:forEach>
</ul>
