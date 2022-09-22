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
    <div class="input-group mb-3">
        <input type="text" class="form-control">
        <button class="btn btn-outline-primary" type="button">
            <i class="fas fa-search me-1"></i>
            <fmt:message key="button.search"/>
        </button>
        <button class="btn btn-outline-primary" type="button">
            <i class="fas fa-redo-alt me-1"></i>
            <fmt:message key="button.clear"/>
        </button>
    </div>
    <div class="pb-2 btn-group btn-group-sm" role="group">
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
    <div style="overflow-x: auto;">
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
            <tbody id="tbodyPartner"></tbody>
        </table>
    </div>
    <a href="<c:url value="/"/>" class="btn btn-outline-primary" 
       data-bs-toggle="tooltip" data-bs-placement="bottom" 
       title="<fmt:message key="leftSidebar.item.homeLink"/>">
        <i class="bi bi-caret-left"></i>
    </a>
</div>
<script src="<c:url value="/js/partner.js"/>"></script>
<script>
    <c:url value="/api/partner" var="endpoint" />
    window.onload = function () {
        loadAdminPartner('${endpoint}');
    };
</script>