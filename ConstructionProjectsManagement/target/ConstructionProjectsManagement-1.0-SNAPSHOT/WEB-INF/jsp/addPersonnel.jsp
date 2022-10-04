<%-- 
    Document   : addPesonnel
    Created on : Sep 17, 2022, 6:20:48 PM
    Author     : ACER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="d-flex justify-content-center">
    <div class="shadow-lg p-3 mb-3 mt-3 bg-body rounded w-75">
        <h2 class="mb-3 text-primary">
            <fmt:message key="personnel-add.form.header"/>
        </h2>
        <hr>
        <form>
            <div class="row mb-4">
                <div class="col">
                    <label for="inputFullName" class="form-label">
                        <fmt:message key="personnel.fullName"/>
                    </label>
                    <input type="text" class="form-control" id="inputFullName">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <label class="form-label" for="genderSelect">
                        <fmt:message key="personnel.gender"/>
                    </label>
                    <select class="form-select" id="genderSelect">
                        <option value="0" selected disabled>Select...</option>
                        <option value="1"><fmt:message key="personnel.gender.female"/></option>
                        <option value="2"><fmt:message key="personnel.gender.male"/></option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label" for="inputBirthday">
                        <fmt:message key="personnel.birthday"/>
                    </label>
                    <input type="date" class="form-control" id="inputBirthday">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <label class="form-label" for="inputEmail">
                        <fmt:message key="personnel.email"/>
                    </label>
                    <input type="email" class="form-control" id="inputEmail">
                </div>
                <div class="col">
                    <label class="form-label" for="inputPhone">
                        <fmt:message key="personnel.phone"/>
                    </label>
                    <input type="tel" class="form-control" id="inputPhone">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <label class="form-label" for="inputAddress">
                        <fmt:message key="personnel.address"/>
                    </label>
                    <input type="text" class="form-control" id="inputAddress">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <label class="form-label" for="inputAvatar">
                        <fmt:message key="personnel.avatar"/>
                    </label>
                    <input type="file" class="form-control" id="inputAvatar">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <label class="form-label" for="selectDeparment">
                        <fmt:message key="personnel.department"/>
                    </label>
                    <select class="form-select" id="selectDeparment">
                        <option value="0" selected>Select...</option>
                        <option value="1">Position 1</option>
                        <option value="2">Position 2</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label" for="selectPosition">
                        <fmt:message key="personnel.position"/>
                    </label>
                    <select class="form-select" id="selectPosition">
                        <option value="0" selected>Select...</option>
                        <option value="1">Position 1</option>
                        <option value="2">Position 2</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label" for="selectRole">
                        <fmt:message key="personnel.role"/>
                    </label>
                    <select class="form-select" id="selectRole">
                        <option value="0" selected>Select...</option>
                        <option value="1">Position 1</option>
                        <option value="2">Position 2</option>
                    </select>
                </div>
            </div>
            <div class="d-flex justify-content-end mb-3">
                <a class="btn btn-outline-primary fw-bold me-3" href="<c:url value="/personnel"/>">
                    <i class="bi bi-arrow-left"></i>
                    <fmt:message key="button.back"/>
                </a>
                <button type="submit" class="btn btn-outline-danger fw-bold">
                    <i class="bi bi-plus-lg"></i>
                    <fmt:message key="button.save"/>
                </button>
            </div>
        </form>
    </div>
</div>