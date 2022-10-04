<%-- 
    Document   : positionDetail
    Created on : Sep 28, 2022, 9:55:03 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/position" var="action"/>
<c:url value="/admin/api/position" var="endpoint"/>

<div class="d-flex justify-content-center mb-3 mt-3">
    <div class="shadow p-3 rounded bg-body w-75">
        <a href="<c:url value="/admin/position"/>" 
           class="btn btn-outline-primary" data-bs-toggle="tooltip" 
           data-bs-placement="bottom" title="Back">
            <i class="fas fa-arrow-left"></i>
        </a>
        <button class="btn btn-outline-primary" data-bs-toggle="modal" 
                data-bs-target="#editPositionModal">
            <i class="fas fa-save"></i>
        </button>
        <button class="btn btn-outline-primary" data-bs-toggle="modal" 
                data-bs-target="#removePositionModal">
            <i class="fas fa-trash"></i>
        </button>
    </div>
</div>
<div class="d-flex justify-content-center mb-3">
    <div class="shadow rounded bg-body w-75 my-hpx-400">
        <div class="p-2 bg-primary text-white text-uppercase h5 rounded-top fw-bold">
            Thong tin chuc vu
        </div>
        <div class="p-3">
            <div class="mb-3">
                <label for="posDetailId" class="form-label">ID:</label>
                <input id="posDetailId" class="form-control" disabled="disable" value="${positionDetail.id}">
            </div>
            <div class="mb-3">
                <label for="posDetailName" class="form-label">Chuc vu:</label>
                <input type="text" id="posDetailName" class="form-control" value="${positionDetail.name}">
            </div>
            <div class="mb-3">
                <label for="posDetailDescription" class="form-label">Ghi chu:</label>
                <input type="text" id="posDetailDescription" class="form-control" 
                       value="${positionDetail.description}">
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="removePositionModal" 
     data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">
                Luu y
            </div>
            <div class="modal-body">
                Ban co chac muon xoa ${positionDetail.name}?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
                        data-bs-dismiss="modal">
                    Dong
                </button>
                <button onclick="removePosition('${endpoint}/removed/${positionDetail.id}', '${action}')" 
                        class="btn btn-outline-danger my-wpx-100 fw-bold">
                    Xoa
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="editPositionModal" 
     data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="text-start bg-danger text-white h5 text-uppercase w-100 p-3">
                Luu y
            </div>
            <div class="modal-body">
                Ban co chac muon cap nhat thong tin?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
                        data-bs-dismiss="modal">
                    Dong
                </button>
                <button onclick="updatePosition('${endpoint}/update/${positionDetail.id}', ${positionDetail.id}, '${action}')" 
                        class="btn btn-outline-danger my-wpx-100 fw-bold">
                    Cap nhat
                </button>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/js/position.js"/>"></script>
