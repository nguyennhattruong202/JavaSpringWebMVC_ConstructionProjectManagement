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
<div id="divMainContentPosition" class="my-main-content-container">
    <div id="divToolPosition" class="d-flex justify-content-end" style="margin-bottom: 10px;">
        <form class="w-100 d-flex">
            <input type="text" id="inputSearchPosition" class="form-control" name="keyword" style="border-radius: 0px;">
            <button id="buttonSearchPersonnel" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" id="buttonAddPosition" data-bs-toggle="modal" data-bs-target="#modalAddPosition" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button id="buttonFilterPosition" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button id="buttonPrintPosition" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div id="divTitleListPosition" class="my-titile-container">Danh sách phòng ban</div>
    <div id="divTablePosition" style="background-color: #ffffff; padding: 5px;">
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
                                <li><a class="dropdown-item" href="<c:url value="/admin/position/${position.id}"/>">Xem chi tiết</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#removePositionModal${position.id}">Xóa chức vụ</a></li>
                            </ul>
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
        <div id="divPaginationPosition" class="d-flex justify-content-end">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#" style="border-radius: 0px;">1</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAddPosition">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="margin-right: 15%;">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #026aa7; color: #ffffff;">
                <h5 class="modal-title text-white text-uppercase">Thêm chức vụ mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row mb-3">
                    <div class="col">
                        <label for="inputAddNamePosition" class="form-label fw-bold">Tên chức vụ</label>
                        <input id="inputAddNamePosition" class="form-control" type="text" style="border-radius: 0px;">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="textareaAddDescriptionPosition" class="form-label fw-bold">Mô tả</label>
                        <textarea id="textareaAddDescriptionPosition" class="form-control" style="border-radius: 0px;"></textarea>  
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="my-button-action" data-bs-toggle="modal" data-bs-target="#modalAddPositionConfirm" data-bs-dismiss="modal">Lưu</button>
            </div>
        </div>
    </div>
</div>
<!-- 
<div class="my-main-content-container bg-danger">
    <div></div>
    <div class="my-titile-container">Danh sách các chức vụ</div>
    <div class="bg-body">
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
                <li><a class="dropdown-item" href="<c:url value="/admin/position/${position.id}"/>">Xem chi tiết</a></li>
                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#removePositionModal${position.id}">Xóa chức vụ</a></li>
            </ul>
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
<div class="modal fade" id="modalAddPosition">
<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
<div class="modal-content">
<div class="modal-header bg-primary">
    <h5 class="modal-title text-white text-uppercase">Thêm chức vụ mới</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <input id="inputAddNamePosition" class="form-control" type="text" placeholder="inputAddNamePosition">
                <label for="inputAddNamePosition">Tên chức vụ</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <textarea id="textareaAddDescriptionPosition" class="form-control" placeholder="textareaAddDescriptionPosition"></textarea>
                <label for="textareaAddDescriptionPosition">Mô tả</label>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
            data-bs-dismiss="modal">Đóng</button>
    <button type="button" class="btn btn-outline-danger my-wpx-100 fw-bold" 
            data-bs-toggle="modal" data-bs-target="#modalAddPositionConfirm" data-bs-dismiss="modal">Lưu</button>
</div>
</div>
</div>
</div>
<div class="modal fade" id="modalAddPositionConfirm" data-bs-backdrop="static" data-bs-keyboard="false">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header bg-danger">
    <h5 class="modal-title text-white text-uppercase">lưu ý</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    Bạn có chắc muốn lưu?
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
            data-bs-toggle="modal" data-bs-target="#modalAddPosition" data-bs-dismiss="modal">
        Trở lại
    </button>
    <button onclick="addPosition('${endpoint}/add', '${action}')" 
            class="btn btn-outline-danger my-wpx-100 fw-bold">
        Lưu
    </button>
</div>
</div>
</div>
</div>
</div>
-->
<script src="<c:url value="/js/position.js"/>"></script>
