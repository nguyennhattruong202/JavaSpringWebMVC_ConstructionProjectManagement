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
<c:url value="/api/partner/remove" var="endpointRemove"/>
<c:url value="/admin/partner/list" var="action"/>
<!-- End url area -->

<div class="shadow p-3 bg-body rounded mt-3 mb-3">
    <h3 class="text-primary p-2 border-bottom mb-3">
        <fmt:message key="partner.table.caption"/>
    </h3>

    <form action="${action}" class="d-flex justify-content-center">
        <div class="input-group mb-3 w-75">
            <input name="kw" type="text" class="form-control" id="searchPartner" 
                   value="${keyword}" placeholder="<fmt:message key="placeholder.search"/>">
            <button class="btn btn-outline-primary" id="buttonSearchPartner" type="submit">
                <i class="fas fa-search me-1"></i>
                <fmt:message key="button.search"/>
            </button>
        </div>
    </form>

    <div class="pb-2 btn-group btn-group-sm" role="group">
        <a href="<c:url value="/admin/partner/add"/>" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.add"/>">
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

    <table class="table table-hover table-bordered">
        <tr class="text-center">
            <th><fmt:message key="partner.id"/></th>
            <th><fmt:message key="partner.name"/></th>
            <th><fmt:message key="partner.phone"/></th>
            <th><fmt:message key="partner.email"/></th>
            <th><fmt:message key="partner.website"/></th>
            <th><fmt:message key="partner.country"/></th>
            <th><fmt:message key="partner.type"/></th>
            <th><fmt:message key="table.action"/></th>
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
                        <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#viewPartnerModal${partner.id}">
                            <i class="fas fa-eye"></i>
                        </a>
                        <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#editPartnerModal${partner.id}">
                            <i class="fas fa-pen"></i>
                        </a>
                        <a onclick="removePartner('${endpointRemove}/${partner.id}')" href="#" class="text-decoration-none" data-bs-toggle="modal" data-bs-target="#confirmRemovePartnerModal${partner.id}">
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
<script src="<c:url value="/js/partner.js"/>"></script>