<%-- 
    Document   : listPartner
    Created on : Sep 21, 2022, 2:51:58 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Begin url area -->
<c:url value="/api/partner" var="endpoint"/>
<c:url value="/admin/partner/list" var="action"/>
<!-- End url area -->

<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top">
        Danh sach doi tac
    </div>
    <div class="p-3">
        <div class="mb-2 d-flex justify-content-end">
            <form action="${action}" class="w-100 me-1">
                <div class="input-group">
                    <input name="kw" type="text" class="form-control" id="searchPartner" 
                           value="${keyword}" placeholder="<fmt:message key="placeholder.search"/>">
                    <button class="btn btn-outline-primary" id="buttonSearchPartner" type="submit" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.search"/>">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>

            <a href="<c:url value="/admin/partner/add"/>" class="btn btn-outline-primary me-1" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.add"/>">
                <i class="fas fa-plus-circle"></i>
            </a>

            <a class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.print"/>">
                <i class="fas fa-print"></i>
            </a>
        </div>

        <table class="table table-hover">
            <tr>
                <th>ID</th>
                <th>Ten doi tac</th>
                <th>So dien thoai</th>
                <th>Email</th>
                <th>Website</th>
                <th>Quoc gia</th>
                <th>Loai</th>
                <th>Thao tac</th>
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
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#viewPartnerModal${partner.id}">Xem</a></li>
                                <li><a class="dropdown-item" href="#">Sua</a></li>
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#removePartnerModal${partner.id}">Xoa</a></li>
                            </ul>
                            <div class="modal fade" id="viewPartnerModal${partner.id}">
                                <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="text-start bg-primary text-white h5 text-uppercase w-100 p-2">
                                            <fmt:message key="partner.info" />
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
                                                <fmt:message key="button.close" />
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#editPartnerModal${partner.id}">
                                <i class="fas fa-pen"></i>
                            </a>
                            <div class="modal fade" id="editPartnerModal${partner.id}" data-bs-backdrop="static" data-bs-keyboard="false">
                                <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="text-start bg-primary text-white h5 text-uppercase w-100 p-3">
                                            <fmt:message key="partner.info" />
                                        </div>
                                        <div class="modal-body">
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.id"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input type="text" class="form-control" disabled value="${partner.id}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.name"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="namePartner" type="text" class="form-control" value="${partner.name}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.phone"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="phonePartner" type="tel" class="form-control" value="${partner.phone}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.email"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="emailPartner" type="email" class="form-control" value="${partner.email}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.website"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="websitePartner" type="email" class="form-control" value="${partner.website}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.address"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="addressPartner" type="text" class="form-control" value="${partner.address}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.country"/> 
                                                </div>
                                                <div class="col-10">
                                                    <input id="countryPartner" type="text" class="form-control" value="${partner.country}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.type"/> 
                                                </div>
                                                <div class="col-10">
                                                    <select id="typePartner" class="form-select">
                                                        <option value="0" selected disabled>Choose...</option>
                                                        <option value="1">Tổ chức</option>
                                                        <option value="2">Cá nhân</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-2 d-flex align-items-center">
                                                    <fmt:message key="partner.note"/> 
                                                </div>
                                                <div class="col-10">
                                                    <textarea id="notePartner" class="form-control">${partner.note}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                                                <fmt:message key="button.close" />
                                            </button>
                                            <button onclick="updatePartner('${endpoint}/update/${partner.id}')" class="btn btn-outline-danger my-wpx-100 fw-bold">
                                                <fmt:message key="button.save"/> 
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="removePartnerModal${partner.id}" data-bs-backdrop="static" data-bs-keyboard="false">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">
                                            <fmt:message key="text.attention" />
                                        </div>
                                        <div class="modal-body">
                                            <fmt:message key="text.confirm.remove" /> ${partner.name}?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                                                <fmt:message key="button.close" />
                                            </button>
                                            <button onclick="removePartner('${endpoint}/removed/${partner.id}')" class="btn btn-outline-danger my-wpx-100 fw-bold">
                                                <fmt:message key="button.yes"/> 
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
        <a href="<c:url value="/"/>" class="btn btn-outline-primary" 
           data-bs-toggle="tooltip" data-bs-placement="bottom" 
           title="<fmt:message key="leftSidebar.item.homeLink"/>">
            <i class="bi bi-caret-left"></i>
        </a>
    </div>
</div>
<script src="<c:url value="/js/partner.js"/>"></script>