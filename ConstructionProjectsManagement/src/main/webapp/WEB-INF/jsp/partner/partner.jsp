<%-- 
    Document   : listPartner
    Created on : Sep 21, 2022, 2:51:58 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:url value="/admin/api/partner/removed" var="removedEndpoint"/>
<c:url value="/admin/partners" var="listPartnerUrl"/>

<div class="my-main-content-container">
    <div class="d-flex justify-content-end my-tool-container">
        <form class="w-100 d-flex">
            <input type="text" class="form-control">
            <button class="my-button" type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <button class="my-button" data-bs-toggle="modal" data-bs-toggle="tooltip" data-bs-target="#modalAddPartner" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-titile-container">Danh sách đối tác</div>
    <div class="my-content-container">
        <table class="table table-hover table-striped">
            <thead>
            <th></th>
            <th>ID</th>
            <th>Tên đối tác</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Website</th>
            <th>Quốc gia</th>
            <th>Loại</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${partnerList}" var="partner">
                    <tr class="align-middle">
                        <td>
                            <input type="checkbox" class="form-check">
                        </td>
                        <td>${partner.id}</td>
                        <td>${partner.name}</td>
                        <td>${partner.phone}</td>
                        <td>${partner.email}</td>
                        <td><a href="${partner.website}" target="_blank">${partner.website}</a></td>
                        <td>${partner.country}</td>
                        <td>${partner.type}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalUpdatePartner${partner.id}">Xem & chỉnh sửa</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalConfirmRemovePartner${partner.id}">Xóa đối tác</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalConfirmRemovePartner${partner.id}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                Lưu ý
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc muốn xóa ${partner.name}?
                            </div>
                            <div class="modal-footer">
                                <button onclick="remove('${removedEndpoint}?id=${partner.id}', '${listPartnerUrl}')" type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalUpdatePartner${partner.id}">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <form>
                                <div class="modal-header">
                                    Cập nhật thông tin đối tác
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">ID:</div>
                                        <div class="col">
                                            <input type="text" class="form-control" disabled="true">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Tên đối tác:</div>
                                        <div class="col">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Số điện thoại:</div>
                                        <div class="col">
                                            <input type="tel" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Email:</div>
                                        <div class="col">
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Website:</div>
                                        <div class="col">
                                            <input type="url" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                                        <div class="col">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Quốc gia:</div>
                                        <div class="col">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-2 d-flex align-items-center">Loại:</div>
                                        <div class="col">
                                            <select class="form-select">
                                                <option value="" disabled="true" selected="true">---Chọn---</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 d-flex align-items-center">Ghi chú:</div>
                                        <div class="col">
                                            <textarea class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button class="my-button-action">Lưu</button>
                                    <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="modalAddPartner">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    Thêm đối tác mới
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Tên đối tác:</div>
                        <div class="col">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Số điện thoại:</div>
                        <div class="col">
                            <input type="tel" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Email:</div>
                        <div class="col">
                            <input type="email" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Website:</div>
                        <div class="col">
                            <input type="url" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                        <div class="col">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Quốc gia:</div>
                        <div class="col">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-2 d-flex align-items-center">Loại:</div>
                        <div class="col">
                            <select class="form-select">
                                <option value="" disabled="true" selected="true">---Chọn---</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2 d-flex align-items-center">Ghi chú:</div>
                        <div class="col">
                            <textarea class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="my-button-action">Lưu</button>
                    <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                </div>
            </form>
        </div>
    </div>
</div>