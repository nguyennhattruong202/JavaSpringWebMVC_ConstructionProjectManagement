<%-- 
    Document   : listPartner
    Created on : Sep 21, 2022, 2:51:58 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #divMainContainerPartner{
        padding: 10px;
        margin-left: 15%;
    }
    #inputSearchPartner{
        border-radius: 0px;
    }
</style>
<c:url value="/api/partner" var="endpoint"/>
<c:url value="/admin" var="action"/>
<div id="divMainContainerPartner">
    <div class="d-flex justify-content-end">
        <input type="text" id="inputSearchPartner" class="form-control">
        <button id="buttonSearchPartner" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <a href="#"class="my-button" id="aAddDepartment" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </a>
        <button id="buttonFilterDepartment" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i></button>
        <button id="buttonPrintDepartment" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="shadow rounded bg-body mt-3 mb-3">
        <div class="p-3 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top"></div>
        <div class="p-3">
            <div class="mb-2 d-flex justify-content-end">
                <form action="${action}/partner/list" class="w-100 me-1">
                    <div class="input-group">
                        <input name="kw" type="text" class="form-control" id="searchPartner" 
                               value="${keyword}">
                        <button class="btn btn-outline-primary" id="buttonSearchPartner" 
                                type="submit" data-bs-toggle="tooltip" data-bs-placement="bottom" 
                                title="TÌm kiếm">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>

                <a href="<c:url value="/admin/partner/add"/>" class="btn btn-outline-primary me-1" 
                   data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm đối tác">
                    <i class="fas fa-plus"></i>
                </a>

                <a class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" 
                   title="In">
                    <i class="fas fa-print"></i>
                </a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>Tên đối tác</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Website</th>
                    <th>Quốc gia</th>
                    <th>Loại</th>
                    <th></th>
                </tr>
                <tbody>
                    <c:forEach items="${partnerList}" var="partner">
                        <tr class="align-middle">
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
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#viewPartnerModal${partner.id}">Xem đối tác</a></li>
                                    <li><a class="dropdown-item" href="${action}/partner/${partner.id}/update">Sửa đối tác</a></li>
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#removePartnerModal${partner.id}">Xóa đối tác</a></li>
                                </ul>
                                <div class="modal fade" id="viewPartnerModal${partner.id}">
                                    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                                        <div class="modal-content">
                                            <div class="text-start bg-primary text-white h5 text-uppercase w-100 p-2">
                                                Thông tin đối tác
                                            </div>
                                            <div class="modal-body">
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">ID:</div>
                                                    <div class="col">
                                                        <input id="inputIdPartner" type="number" class="form-control bg-body" value="${partner.id}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Tên đối tác:</div>
                                                    <div class="col">
                                                        <input id="inputNamePartner" type="text" class="form-control bg-body" value="${partner.name}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Số điện thoại:</div>
                                                    <div class="col">
                                                        <input id="inputPhonePartner" type="tel" class="form-control bg-body" value="${partner.phone}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Email:</div>
                                                    <div class="col">
                                                        <input id="inputEmailPartner" type="email" class="form-control bg-body" value="${partner.email}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Website:</div>
                                                    <div class="col">
                                                        <input id="inputWebsitePartner" type="url" class="form-control bg-body" value="${partner.website}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Địa chỉ:</div>
                                                    <div class="col">
                                                        <input id="inputAddressPartner" type="text" class="form-control bg-body" value="${partner.address}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Quốc gia:</div>
                                                    <div class="col">
                                                        <input id="inputCountryPartner" type="text" class="form-control bg-body" value="${partner.country}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start mb-2">
                                                    <div class="col-2 d-flex align-items-center">Loại:</div>
                                                    <div class="col">
                                                        <input id="inputTypePartner" type="text" class="form-control bg-body" value="${partner.type}" readonly="true">
                                                    </div>
                                                </div>
                                                <div class="row text-start">
                                                    <div class="col-2 d-flex align-items-center">Ghi chú:</div>
                                                    <div class="col">
                                                        <input id="inputNotePartner" type="text" class="form-control bg-body" value="${partner.note}" readonly="true">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                                                    Đóng
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="removePartnerModal${partner.id}" data-bs-backdrop="static" data-bs-keyboard="false">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">Lưu ý</div>
                                            <div class="modal-body">
                                                Bạn có chắc muốn xóa ${partner.name}?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">Đóng</button>
                                                <button onclick="removePartner('${endpoint}/removed/${partner.id}')" class="btn btn-outline-danger my-wpx-100 fw-bold">Xóa</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="<c:url value="/"/>" class="btn btn-outline-primary" 
               data-bs-toggle="tooltip" data-bs-placement="bottom" 
               title="Trang chủ">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
    </div>
</div>
<script src="<c:url value="/js/partner.js"/>"></script>