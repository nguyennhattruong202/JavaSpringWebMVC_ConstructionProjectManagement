<%-- 
    Document   : insertPartner
    Created on : Sep 23, 2022, 2:42:12 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="w-100 d-flex justify-content-center">
    <div class="shadow rounded bg-body mt-3 mb-3 w-75">
        <div class="p-3 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
            <fmt:message key="text.insertPartner"/>
        </div>
        <div class="p-3">
            <div class="row mb-3">
                <div class="form-outline">
                    <label class="form-label" for="partnerName">
                        <fmt:message key="partner.name"/>
                    </label>
                    <input type="text" id="partnerName" class="form-control"
                           placeholder="<fmt:message key="input.placeholder.partnerName"/>" />
                </div>
            </div>
            <div class="row g-2 mb-3">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="partnerPhone">
                            <fmt:message key="partner.phone"/>
                        </label>
                        <input type="tel" id="partnerPhone" class="form-control"
                               placeholder="<fmt:message key="input.placeholder.partnerPhone"/>" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="partnerEmail">
                            <fmt:message key="partner.email"/>
                        </label>
                        <input type="email" id="partnerEmail" class="form-control"
                               placeholder="<fmt:message key="input.placeholder.partnerEmail"/>" />
                    </div>
                </div>
            </div>
            <div class="row g-2 mb-3">
                <div class="col-8">
                    <div class="form-outline">
                        <label class="form-label" for="partnerAddress">
                            <fmt:message key="partner.address"/>
                        </label>
                        <input type="text" id="partnerAddress" class="form-control"
                               placeholder="<fmt:message key="input.placeholder.partnerAddress"/>" />
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-outline">
                        <label class="form-label" for="partnerCountry">
                            <fmt:message key="partner.country"/>
                        </label>
                        <input type="text" id="partnerCountry" class="form-control"
                               placeholder="<fmt:message key="input.placeholder.partnerCountry"/>" />
                    </div>
                </div>
            </div>
            <div class="row g-2 mb-3">
                <div class="col-10">
                    <div class="form-outline">
                        <label class="form-label" for="partnerWebsite">
                            <fmt:message key="partner.website"/>
                        </label>
                        <input type="url" id="partnerWebsite" class="form-control"
                               placeholder="<fmt:message key="input.placeholder.partnerWebsite"/>" />
                    </div>
                </div>
                <div class="col-2">
                    <div class="form-outline">
                        <label class="form-label" for="partnerType">
                            <fmt:message key="partner.type"/>
                        </label>
                        <select class="form-select">
                            <option value="0" selected disabled>Choose...</option>
                            <option value="1">Tổ chức</option>
                            <option value="2">Cá nhân</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="form-outline">
                    <label class="form-label" for="partnerNote">
                        <fmt:message key="partner.note"/>
                    </label>
                    <textarea id="partnerNote" class="form-control"></textarea>
                </div>
            </div>
            <div class="d-flex justify-content-end">
                <a href="<c:url value="/admin/partner/list"/>" class="btn btn-outline-primary fw-bold my-wpx-100">
                    <fmt:message key="button.back"/>
                </a>
                <button class="btn btn-outline-danger ms-2 fw-bold my-wpx-100" type="button"
                        data-bs-toggle="modal" data-bs-target="#confirmSave">
                    <fmt:message key="button.save"/>
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="confirmSave" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="saveModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="saveModalLabel"><fmt:message key="text.attention"/></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <fmt:message key="text.confirm.save"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">
                    <fmt:message key="button.close"/>
                </button>
                <button type="button" class="btn btn-danger">
                    <fmt:message key="button.save"/>
                </button>
            </div>
        </div>
    </div>
</div>
