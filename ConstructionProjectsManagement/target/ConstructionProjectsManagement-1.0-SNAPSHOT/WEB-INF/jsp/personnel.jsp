<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Personnel information
    </div>
    <div class="p-3">sfghjkjhgfdssdfgh</div>
</div>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        <fmt:message key="personnel.table.caption"/>
    </div>
    <div class="p-3">
        <div class="mb-2 d-flex justify-content-end">
            <form action="${action}" class="w-100 me-1">
                <div class="input-group">
                    <input name="kw" type="text" class="form-control" id="searchPersonnel" 
                           value="${keyword}" placeholder="<fmt:message key="placeholder.search"/>">
                    <button class="btn btn-outline-primary" id="buttonSearchPersonnel" type="submit" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.search"/>">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>

            <a href="#" class="btn btn-outline-primary me-1" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.add"/>">
                <i class="fas fa-plus-circle"></i>
            </a>

            <a class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="<fmt:message key="button.print"/>">
                <i class="fas fa-print"></i>
            </a>
        </div>

        <table class="table table-hover table-bordered border-dark">
            <thead class="text-center">
                <th><fmt:message key="personnel.id"/></th>
                <th><fmt:message key="personnel.lastname"/></th>
                <th><fmt:message key="personnel.firstname"/></th>
                <th><fmt:message key="personnel.gender"/></th>
                <th><fmt:message key="personnel.birthday"/></th>
                <th><fmt:message key="personnel.identity"/></th>
                <th><fmt:message key="personnel.phone"/></th>
                <th><fmt:message key="personnel.email"/></th>
                <th>Role</th>
                <th><fmt:message key="table.action"/></th>
            </thead>
            <tbody>
                <c:forEach items="${listPersonnel}" var="personnel">
                    <tr class="align-middle">
                        <td>${personnel[0]}</td>
                        <td>${personnel[2]}</td>
                        <td>${personnel[3]}</td>
                        <td>${personnel[4]}</td>
                        <td>${personnel[5]}</td>
                        <td>${personnel[6]}</td>
                        <td>${personnel[7]}</td>
                        <td>${personnel[8]}</td>
                        <td>${personnel[10]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none me-1">
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
</div>
<script src="<c:url value="/js/partner.js"/>"></script>