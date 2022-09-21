<%-- 
    Document   : listPartner
    Created on : Sep 21, 2022, 2:51:58 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow p-3 bg-body rounded mt-3 mb-3">
    <h3 class="text-primary p-2 border-bottom mb-3">
        <fmt:message key="partner.table.caption"/>
    </h3>
    <c:url value="/admin/list-partner" var="action"/>
    <form action="${action}">
        <div class="d-flex mb-3">
            <select id="searchSelect" class="form-select" style="width: 20%" onchange="partnerSearchBy()">
                <option value="0" selected>
                    <fmt:message key="search.searchAll"/>
                </option>
                <option value="1">
                    <fmt:message key="search.searchByName"/>
                </option>
                <option value="2">
                    <fmt:message key="search.searchByPhone"/>
                </option>
                <option value="3">
                    <fmt:message key="search.searchByEmail"/>
                </option>
                <option value="4">
                    <fmt:message key="search.searchByAddress"/>
                </option>
            </select>
            <input name="kwName" id="nameSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <input name="kwPhone" id="phoneSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <input name="kwEmail" id="emailSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <input name="kwAddress" id="addressSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <button type="submit" class="btn btn-outline-primary ms-3" id="buttonSearch">
                <i class="bi bi-search"></i>
            </button>
        </div>
    </form>
    <div class="pb-2 btn-group" role="group">
        <a href="<c:url value="/personnel/personnel-add"/>" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.add"/>">
            <i class="fas fa-plus-circle"></i>
        </a>
        <a class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.edit"/>">
            <i class="fas fa-edit"></i>
        </a>
        <a class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.remove"/>">
            <i class="fas fa-trash-alt"></i>
        </a>
        <a class="btn btn-outline-primary"  data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.print"/>">
            <i class="fas fa-print"></i>
        </a>
    </div>
    <table class="table table-hover w-100">
        <thead class="table-light">
        <th></th>
        <th><fmt:message key="partner.id"/></th>
        <th><fmt:message key="partner.name"/></th>
        <th><fmt:message key="partner.phone"/></th>
        <th><fmt:message key="partner.email"/></th>
        <th><fmt:message key="partner.website"/></th>
        <th><fmt:message key="partner.country"/></th>
        <th><fmt:message key="table.action"/></th>
        </thead>
        <tbody id="tbodyPartner">
            <c:forEach items="${listPartnerIndex}" var="partner">
                <tr class="align-middle">
                    <td>
                        <input class="form-check-input" type="checkbox">
                    </td>
                    <td>${partner.id}</td>
                    <td>${partner.name}</td>
                    <td>${partner.phone}</td>
                    <td>${partner.email}</td>
                    <td><a href="${partner.website}" target="_blank">${partner.website}</a></td>
                    <td>${partner.country}</td>
                    <td>
                        <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#editPartnerModal">
                            <i class="fas fa-eye"></i>
                        </a>
                        <a href="#" class="text-decoration-none me-1">
                            <i class="fas fa-pen"></i>
                        </a>
                        <a href="#" class="text-decoration-none">
                            <i class="fas fa-trash-alt text-danger"></i>
                        </a>
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

<div class="modal fade" id="editPartnerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông tin về nhà đầu tư</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Thông tin chi tiết
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/js/partner.js"/>"></script>