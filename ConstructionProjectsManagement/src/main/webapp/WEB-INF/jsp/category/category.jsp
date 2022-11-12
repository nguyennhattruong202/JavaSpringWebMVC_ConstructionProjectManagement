<%-- 
    Document   : category
    Created on : Oct 3, 2022, 6:46:24 PM
    Author     : ACER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:url value="/admin/project/category" var="categoryUrl" />

<div id="divMainContentCatogory" class="my-main-content-container">
    <div id="divToolCategory" class="my-tool-container d-flex justify-content-end">
        <form class="w-100 d-flex">
            <input type="text" id="inputSearchCategory" class="form-control" name="keyword">
            <button class="my-button" type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" data-bs-toggle="modal" data-bs-toggle="tooltip" data-bs-target="#modalAddCategory" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div id="divTitleCategory" class="my-titile-container">Danh sách hạng mục thi công</div>
    <div id="divTableCategory" class="my-content-container">
        <table class="table table-hover table-striped">
            <thead>
            <th></th>
            <th>Id</th>
            <th>Tên hạng mục thi công</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Trưởng hạng mục</th>
            <th>Tiến độ</th>
            <th>Trạng thái</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${categoryList}" var="listCategory">
                    <tr>
                        <td>
                            <input type="checkbox" class="form-check">
                        </td>
                        <td>${listCategory[0]}</td>
                        <td>${listCategory[1]}</td>
                        <td>${listCategory[2]}</td>
                        <td>${listCategory[3]}</td>
                        <td>${listCategory[4]} ${listCategory[7]}</td>
                        <td>${listCategory[5]}</td>
                        <td>${listCategory[6]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${categoryUrl}/${listCategory[0]}">Xem công việc</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalUpdateCategory${listCategory[0]}">Xem và cập nhật</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalConfirmRemoveCategory${listCategory[0]}">Xóa</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalConfirmRemoveCategory${listCategory[0]}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                Lưu ý
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc muốn xóa ${listCategory[1]}?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalUpdateCategory${listCategory[0]}">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                Cập nhật hạng mục thi công
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tên hạng mục:</div>
                                        <div class="col">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Ngày bắt đầu:</div>
                                        <div class="col">
                                            <input type="date" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Ngày kết thúc:</div>
                                        <div class="col">
                                            <input type="date" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Người phụ trách:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 d-flex align-items-center">Mô tả:</div>
                                        <div class="col">
                                            <textarea class="form-control"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="my-button-action" data-bs-toggle="modal" data-bs-target="#modalAddPositionConfirm" data-bs-dismiss="modal">Lưu</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
        <div id="divPaginationCategory" class="d-flex justify-content-end">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#" style="border-radius: 0px;">1</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAddCategory">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                Thêm hạng mục thi công mới
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tên hạng mục:</div>
                        <div class="col">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Ngày bắt đầu:</div>
                        <div class="col">
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Ngày kết thúc:</div>
                        <div class="col">
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Người phụ trách:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2 d-flex align-items-center">Mô tả:</div>
                        <div class="col">
                            <textarea class="form-control"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="my-button-action" data-bs-toggle="modal" data-bs-target="#modalAddPositionConfirm" data-bs-dismiss="modal">Lưu</button>
            </div>
        </div>
    </div>
</div>