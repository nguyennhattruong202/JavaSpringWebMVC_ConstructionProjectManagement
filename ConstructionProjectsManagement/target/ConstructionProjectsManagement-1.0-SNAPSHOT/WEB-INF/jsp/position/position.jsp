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
<script src="<c:url value="/js/position.js"/>"></script>

<c:url value="/admin/position" var="listPositionUrl"/>
<c:url value="/admin/api/position/removed" var="removedEndpoint"/>
<c:url value="/admin/api/position/update" var="updateEndpoint"/>

<div class="my-main-content-container">
    <div class="my-tool-container d-flex justify-content-end">
        <form class="w-100 d-flex">
            <input type="text" class="form-control">
            <button type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" data-bs-toggle="modal" data-bs-target="#modalAddPosition" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-titile-container">Danh sách chức vụ</div>
    <div class="my-content-container">
        <table class="table table-hover table-striped">
            <thead>
            <th> ID</th>
            <th>Chức vụ</th>
            <th>Mô tả</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${positionList}" var="position">
                    <tr class="align-middle">
                        <td>${position.id}</td>
                        <td>${position.name}</td>
                        <td>${position.description}</td>
                        <td>
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalUpdatePosition${position.id}">Xem & cập nhật</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalConfirmRemovePosition${position.id}">Xóa chức vụ</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalConfirmRemovePosition${position.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                Lưu ý
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc muốn xóa ${position.name}?
                            </div>
                            <div class="modal-footer">
                                <button onclick="remove('${removedEndpoint}?id=${position.id}', '${listPositionUrl}')" type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalUpdatePosition${position.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <form id="formSubmit">
                                <div class="modal-header">
                                    Cập nhật thông tin chức vụ
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Mã chức vụ:</div>
                                        <div class="col">
                                            <input class="form-control" type="number" name="id" disabled="true" value="${position.id}">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tên chức vụ:</div>
                                        <div class="col">
                                            <input class="form-control" type="text" name="name" value="${position.name}">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 d-flex align-items-center">Mô tả:</div>
                                        <div class="col">
                                            <textarea class="form-control" name="description">${position.description}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                                    <button type="button" class="my-button-action" onclick="updatePosition2('${updateEndpoint}', '${listPositionUrl}')">Lưu</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
        <div id="divPaginationPosition" class="d-flex justify-content-end">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#" style="border-radius: 0px;">1</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAddPosition">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    Thêm chức vụ mới
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tên chức vụ:</div>
                        <div class="col">
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2 d-flex align-items-center">Mô tả:</div>
                        <div class="col">
                            <textarea class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="my-button-action">Lưu</button>
                </div>
            </form>
        </div>
    </div>
</div>

