<%-- 
    Document   : personnel
    Created on : Sep 17, 2022, 4:02:50 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow p-3 mb-3 mt-3 bg-body rounded">
    <h3 class="text-primary p-2 border-bottom mb-3">
        <fmt:message key="personnel.table.caption"/>
    </h3>
    <c:url value="/personnel" var="action"/>
    <form action="${action}">
        <div class="d-flex mb-3">
            <select id="searchSelect" class="form-select" style="width: 20%" onchange="selectSearchBy()">
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
            </select>
            <input name="kwName" id="nameSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <input name="kwPhone" id="phoneSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <input name="kwEmail" id="emailSearch" type="text" class="form-control ms-3" style="display: none; width: 50%">
            <button type="submit" class="btn btn-outline-primary ms-3" id="buttonSearch">
                <i class="bi bi-search"></i>
            </button>
        </div>
    </form>
    <div class="pb-2 btn-group" role="group">
        <a href="<c:url value="/personnel/personnel-add"/>" class="btn btn-outline-primary">
            <i class="bi bi-plus-circle me-2"></i>
            <fmt:message key="button.add"/>
        </a>
        <a class="btn btn-outline-primary">
            <i class="bi bi-pencil-square me-2"></i>
            <fmt:message key="button.edit"/>
        </a>
        <a class="btn btn-outline-primary">
            <i class="bi bi-trash me-2"></i>
            <fmt:message key="button.remove"/>
        </a>
        <a class="btn btn-outline-primary">
            <i class="bi bi-printer me-2"></i>
            <fmt:message key="button.print"/>
        </a>
    </div>
    <table class="table table-hover">
        <thead class="table-light">
        <th></th>
        <th><fmt:message key="personnel.id"/></th>
        <th><fmt:message key="personnel.avatar"/></th>
        <th><fmt:message key="personnel.fullName"/></th>
        <th><fmt:message key="personnel.birthday"/></th>
        <th><fmt:message key="personnel.phone"/></th>
        <th><fmt:message key="personnel.email"/></th>
        <th><fmt:message key="personnel.address"/></th>
        <th><fmt:message key="personnel.position"/></th>
        <th><fmt:message key="personnel.role"/></th>
        <th><fmt:message key="table.action"/></th>
        </thead>
        <tbody id="listPersonnel">
            <c:forEach items="${listPersonnel[0]}">
                <tr class="align-middle">
                    <td>
                        <input class="form-check-input" type="checkbox">
                    </td>
                    <td>${listPersonnel[0][0]}</td>
                    <td>
                        <img src="${listPersonnel[0][1]}" alt="userAvatar" class="rounded-circle shadow rounded" width="40" height="40">
                    </td>
                    <td>${listPersonnel[0][2]}</td>
                    <td>${listPersonnel[0][3]}</td>
                    <td>${listPersonnel[0][4]}</td>
                    <td>${listPersonnel[0][5]}</td>
                    <td>${listPersonnel[0][6]}</td>
                    <td>${listPersonnel[0][7]}</td>
                    <td>${listPersonnel[0][9]}</td>
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
<script src="<c:url value="/js/personnel.js"/>"></script>
<!--
<script>
<c:url value="/api/personnel" var="endpoint" />
        window.onload = function () {
            loadPersonnel('${endpoint}');
        };
</script>
-->