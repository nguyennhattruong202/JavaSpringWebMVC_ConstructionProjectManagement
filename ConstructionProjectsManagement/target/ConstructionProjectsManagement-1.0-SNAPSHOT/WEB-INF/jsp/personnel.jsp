<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow-lg p-3 mb-3 mt-3 bg-body rounded">
    <h3 class="text-primary p-2">
        <fmt:message key="personnel.table.caption"/>
    </h3>
    <div class="border-top border-bottom p-2">
        <a href="<c:url value="/personnel/personnel-add"/>" class="btn btn-outline-primary fw-bold rounded-pill">
            <i class="bi bi-plus-circle me-2"></i>
            <fmt:message key="button.add"/>
        </a>
        <a class="btn btn-outline-warning fw-bold rounded-pill">
            <i class="bi bi-pencil-square me-2"></i>
            <fmt:message key="button.edit"/>
        </a>
        <a class="btn btn-outline-danger fw-bold rounded-pill">
            <i class="bi bi-trash me-2"></i>
            <fmt:message key="button.remove"/>
        </a>
        <a class="btn btn-outline-success fw-bold rounded-pill">
            <i class="bi bi-printer me-2"></i>
            <fmt:message key="button.print"/>
        </a>

    </div>
    <table class="table table-hover mt-3">
        <thead class="table-light">
        <th></th>
        <th><fmt:message key="personnel.table.id"/></th>
        <th><fmt:message key="personnel.table.avatar"/></th>
        <th><fmt:message key="personnel.table.fullName"/></th>
        <th><fmt:message key="personnel.table.birthday"/></th>
        <th><fmt:message key="personnel.table.phone"/></th>
        <th><fmt:message key="personnel.table.email"/></th>
        <th><fmt:message key="personnel.table.address"/></th>
        <th><fmt:message key="personnel.table.position"/></th>
        <th><fmt:message key="personnel.table.role"/></th>
        <th><fmt:message key="personnel.table.action"/></th>
        </thead>
        <tbody>
            <c:forEach begin="1" end="9" var="i">
                <tr class="align-middle">
                    <td>
                        <input class="form-check-input" type="checkbox">
                    </td>
                    <td>${i}</td>
                    <td>
                        <img src="https://res.cloudinary.com/dgqmraoge/image/upload/v1662860529/photo-1633332755192-727a05c4013d_iwfpkd.jpg"
                             alt="userAvatar" class="rounded-circle shadow rounded" width="40" height="40">
                    </td>
                    <td>Full name ${i}</td>
                    <td>Birthday ${i}</td>
                    <td>097865435${i}</td>
                    <td>Email ${i}</td>
                    <td>Address ${i}</td>
                    <td>Position ${i}</td>
                    <td>Role ${i}</td>
                    <td>
                        <a class="btn btn-outline-primary btn-sm">
                            <i class="bi bi-pencil-square"></i>
                        </a>
                        <a class="btn btn-outline-danger btn-sm">
                            <i class="fa fa-trash"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="<c:url value="/"/>" class="btn btn-outline-primary" 
       data-bs-toggle="tooltip" data-bs-placement="top" 
       title="<fmt:message key="leftSidebar.item.homeLink"/>">
        <i class="bi bi-caret-left"></i>
    </a>
</div>
