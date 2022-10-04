<%-- 
    Document   : position
    Created on : Sep 27, 2022, 2:55:15 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/position" var="action"/>
<c:url value="/admin/api/position" var="endpoint"/>

<div class="shadow rounded bg-body mb-3 mt-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Them chuc vu
    </div>
    <div class="p-3">
        <div class="row mb-2">
            <div class="col">
                <label for="inputAddNamePosition" class="form-label">Chuc vu:</label>
                <input id="inputAddNamePosition" type="text" class="form-control" placeholder="Nhap ten chuc vu">
            </div>
            <div class="col">
                <label for="inputAddDescriptionPosition" class="form-label">Mo ta:</label>
                <input id="inputAddDescriptionPosition" type="text" class="form-control" placeholder="Nhap mo ta">
            </div>
        </div>
        <div class="d-flex justify-content-end">
            <button class="btn btn-outline-primary fw-bold my-wpx-100" 
                    data-bs-toggle="modal" data-bs-target="#addPositionModal">
                <i class="fas fa-plus me-2"></i>
                Them
            </button>
        </div>
    </div>
</div> 
<div class="modal fade" id="addPositionModal" data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">
                Luu y
            </div>
            <div class="modal-body">
                Ban co chac muon luu?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                    Dong
                </button>
                <button onclick="addPosition('${endpoint}/add', '${action}')" 
                        class="btn btn-outline-danger my-wpx-100 fw-bold">
                    Luu
                </button>
            </div>
        </div>
    </div>
</div>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Danh sách các chức vụ
    </div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form action="${action}/list" class="w-100 me-1">
                <div class="input-group">
                    <input name="kw" type="text" class="form-control" id="searchPosition" 
                           value="${keyword}" placeholder="Nhập từ khóa...">
                    <button class="btn btn-outline-primary" id="buttonSearchPosition" 
                            type="submit" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Search">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="btnPrintPosition" class="btn btn-outline-primary" data-bs-toggle="tooltip" 
               data-bs-placement="bottom" title="Print">
                <i class="fas fa-print"></i>
            </a>
        </div>
        <table class="table table-hover">
            <tr>
                <th> ID</th>
                <th>Chức vụ</th>
                <th>Mô tả</th>
                <th>Thao tác</th>
            </tr>
            <tbody>
                <c:forEach items="${positionList}" var="position">
                    <tr class="align-middle">
                        <td>${position.id}</td>
                        <td>${position.name}</td>
                        <td>${position.description}</td>
                        <td>
                            <a href="<c:url value="/admin/position/${position.id}"/>" 
                               class="text-decoration-none me-2">
                                <i class="fas fa-eye"></i>
                            </a>
                            <a href="#" class="text-decoration-none" data-bs-toggle="modal" 
                               data-bs-target="#removePositionModal${position.id}">
                                <i class="fas fa-trash text-danger"></i>
                            </a>
                            <div class="modal fade" id="removePositionModal${position.id}" data-bs-backdrop="static" 
                                 data-bs-keyboard="false">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">
                                            Lưu ý
                                        </div>
                                        <div class="modal-body">
                                            Bạn có chắc muốn xóa ${position.name}?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
                                                    data-bs-dismiss="modal">
                                                Đóng
                                            </button>
                                            <button onclick="removePosition('${endpoint}/removed/${position.id}', '${action}')" 
                                                    class="btn btn-outline-danger my-wpx-100 fw-bold">
                                                Xóa
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="<c:url value="/js/position.js"/>"></script>
