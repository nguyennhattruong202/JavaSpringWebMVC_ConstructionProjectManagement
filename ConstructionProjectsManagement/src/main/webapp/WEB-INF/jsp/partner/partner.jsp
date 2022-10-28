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
    #divContainerListPartner{
        background-color: #ffffff;
        border: 1px solid #DEE2E6;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    #divTitleListPartner{
        text-transform: uppercase;
        background-color: #026aa7;
        padding: 5px;
        font-weight: bold;
        color:#ffffff;
        border: 1px solid #026aa7;
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
    <div id="divContainerListPartner">
        <div id="divTitleListPartner">Danh sách đối tác</div>
        <div class="pe-2 ps-2">
            <table class="table table-hover table-striped">
                <thead>
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
                                    <c:url value="${admin}/partner/edit" var="c">
                                        <c:param value="${partner.id}" name="id"/>
                                    </c:url>
                                    <li><a class="dropdown-item" href="${c}">Xem đối tác</a></li>
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#removePartnerModal${partner.id}">Xóa đối tác</a></li>
                                </ul>
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
        </div>
    </div>
</div>
<script src="<c:url value="/js/partner.js"/>"></script>