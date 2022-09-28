<%-- 
    Document   : detailPersonnel
    Created on : Sep 27, 2022, 1:40:08 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="personnelId" value="${personnelDetail}"/>  
<div id="personnelDetail" class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Personnel information
    </div>
    <div class="ps-3 pe-3 pb-3 pt-2 row">
        <div class="col-2">
            <img class="img-fluid h-100 w-100" src="<c:url value="/images/construction.jpg"/>" alt="avatarImage">
        </div>
        <div class="col-10">
            <div class="row">
                <div class="col-6">
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ma nhan su:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelId[0]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Gioi tinh:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[4]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">CMND/CCCD:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[6]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Email:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[8]}</div>
                    </div>
                    <div class="row">
                        <div class="col-3 d-flex align-items-center">Chuc vu:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[11]}</div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ho va ten:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[2] + personnelDetail[3]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ngay sinh:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[5]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">So dien thoai:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[7]}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Dia chi:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[9]}</div>
                    </div>
                    <div class="row">
                        <div class="col-3 d-flex align-items-center">Phong ban:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${personnelDetail[12]}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
