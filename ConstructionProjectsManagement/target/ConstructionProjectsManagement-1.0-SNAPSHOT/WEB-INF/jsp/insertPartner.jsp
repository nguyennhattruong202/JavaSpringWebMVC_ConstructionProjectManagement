<%-- 
    Document   : insertPartner
    Created on : Sep 23, 2022, 2:42:12 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="w-100 d-flex justify-content-center">
    <div class="shadow rounded bg-body mt-3 mb-3 w-75">
        <div class="p-3 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
            <fmt:message key="text.insertPartner"/>
        </div>
        <c:url value="/admin/partner/add" var="action"/>
        <form:form method="post" action="${action}" modelAttribute="partner">
            <form:errors path="*" element="div" cssClass="alert alert-danger"/>
            <div class="p-3">
                <div class="row mb-3">
                    <div class="form-outline">
                        <label class="form-label" for="partnerName">
                            <fmt:message key="partner.name"/>
                        </label>
                        <fmt:message key="input.placeholder.partnerName" var="placeholderPartnerName"/>
                        <form:input path="name" type="text" id="partnerName" cssClass="form-control"
                                    placeholder="${placeholderPartnerName}"/>
                    </div>
                </div>
                <div class="row g-2 mb-3">
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="partnerPhone">
                                <fmt:message key="partner.phone"/>
                            </label>
                            <fmt:message key="input.placeholder.partnerPhone" var="placeholderPartnerPhone"/>
                            <form:input path="phone" type="tel" id="partnerPhone" cssClass="form-control"
                                        placeholder="${placeholderPartnerPhone}" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <label class="form-label" for="partnerEmail">
                                <fmt:message key="partner.email"/>
                            </label>
                            <fmt:message key="input.placeholder.partnerEmail" var="placeholderPartnerEmail"/>
                            <form:input path="email" type="email" id="partnerEmail" cssClass="form-control"
                                        placeholder="${placeholderPartnerEmail}" />
                        </div>
                    </div>
                </div>
                <div class="row g-2 mb-3">
                    <div class="col-8">
                        <div class="form-outline">
                            <label class="form-label" for="partnerAddress">
                                <fmt:message key="partner.address"/>
                            </label>
                            <fmt:message key="input.placeholder.partnerAddress" var="placeholderPartnerAddress"/>
                            <form:input path="address" type="text" id="partnerAddress" cssClass="form-control"
                                        placeholder="${placeholderPartnerAddress}" />
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-outline">
                            <label class="form-label" for="partnerCountry">
                                <fmt:message key="partner.country"/>
                            </label>
                            <fmt:message key="input.placeholder.partnerCountry" var="placehlerPartnerCountry"/>
                            <form:input path="country" type="text" id="partnerCountry" cssClass="form-control"
                                        placeholder="${placehlerPartnerCountry}" />
                        </div>
                    </div>
                </div>
                <div class="row g-2 mb-3">
                    <div class="col-10">
                        <div class="form-outline">
                            <label class="form-label" for="partnerWebsite">
                                <fmt:message key="partner.website"/>
                            </label>
                            <fmt:message key="input.placeholder.partnerWebsite" var="placeholderWebsite"/>
                            <form:input path="website" type="url" id="partnerWebsite" cssClass="form-control"
                                        placeholder="${placeholderWebsite}"/>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="form-outline">
                            <label class="form-label" for="partnerType">
                                <fmt:message key="partner.type"/>
                            </label>
                            <form:select path="type" cssClass="form-select">
                                <option value="0" selected disabled>Choose...</option>
                                <option value="1">Tổ chức</option>
                                <option value="2">Cá nhân</option>
                            </form:select>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="form-outline">
                        <label class="form-label" for="partnerNote">
                            <fmt:message key="partner.note"/>
                        </label>
                        <fmt:message key="input.placeholder.partnerNote" var="placeholderpartnerNote"/>
                        <form:textarea path="note" id="partnerNote" cssClass="form-control" placeholder="${placeholderpartnerNote}"></form:textarea>
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
                            <button type="submit" class="btn btn-danger">
                                <fmt:message key="button.save"/>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
</div>

