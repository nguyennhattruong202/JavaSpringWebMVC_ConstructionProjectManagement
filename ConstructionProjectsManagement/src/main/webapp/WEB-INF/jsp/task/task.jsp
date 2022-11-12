<%-- 
    Document   : task
    Created on : Oct 1, 2022, 6:04:57 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="my-main-content-container">
    <div class="my-tool-container d-flex justify-content-end">
        <form class="w-100 d-flex">
            <input type="text" class="form-control">
            <button class="my-button" type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" data-bs-toggle="modal" data-bs-toggle="tooltip" data-bs-target="#modalAddTask" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-titile-container">Danh sách công việc</div>
    <div class="my-content-container">
        <table class="table table-hover table-striped">
            <thead>
            <th></th>
            <th>ID</th>
            <th>Tên công việc</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Độ ưu tiên</th>
            <th>Người phụ trách</th>
            <th>Trạng thái</th>
            <th class="text-center"></th>
            </thead>
            <tbody>
                <c:forEach items="${dataOfTask}" var="data">
                    <tr class="align-middle">
                        <td>
                            <input type="checkbox" class="form-check">
                        </td>
                        <td>${data[0]}</td>
                        <td>${data[1]}</td>
                        <td>${data[2]}</td>
                        <td>${data[3]}</td>
                        <td>${data[4]}</td>
                        <td>${data[7]} ${data[8]}</td>
                        <td>${data[9]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalUpdateTask${data[0]}">Xem & chỉnh sửa</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalConfirmRemoveTask${data[0]}">Xóa công việc</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalConfirmRemoveTask${data[0]}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                Lưu ý
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc muốn xóa ${data[1]}?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                <button type="button" class="my-button-action" data-bs-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalUpdateTask${data[0]}">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                Cập nhật công việc
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">ID:</div>
                                        <div class="col">
                                            <input type="number" class="form-control" disable="true" readonly="true">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tên công việc:</div>
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
                                        <div class="col-2 d-flex align-items-center">Độ ưu tiên:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true" selected="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true" selected="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Người phụ trách:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true" selected="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true" selected="true">---Chọn---</option>
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
                                <button type="button" class="my-button-action">Lưu</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
        <ul class="pagination d-flex justify-content-end">
            <li class="page-item"><a class="page-link" href="#" style="border-radius: 0px;">1</a></li>
            <li class="page-item"><a class="page-link" href="#" style="border-radius: 0px;">2</a></li>
        </ul>
    </div>
</div>
<div class="modal fade" id="modalAddTask">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                Thêm công việc mới
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tên công việc:</div>
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
                        <div class="col-2 d-flex align-items-center">Độ ưu tiên:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true" selected="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tiến độ:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true" selected="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Người phụ trách:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true" selected="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Trạng thái:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true" selected="true">---Chọn---</option>
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
                <button type="button" class="my-button-action">Lưu</button>
            </div>
        </div>
    </div>
</div>