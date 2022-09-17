<%-- 
    Document   : addPesonnel
    Created on : Sep 17, 2022, 6:20:48 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow-lg p-3 mb-3 mt-3 bg-body rounded">
    <form>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Full name:</label>
            </div>
            <div class="col-10">
                <input type="text" class="form-control" placeholder="Enter full name">
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Birthday:</label>
            </div>
            <div class="col-10">
                <input type="date" class="form-control" placeholder="Enter your birthday">
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Email:</label>
            </div>
            <div class="col-4">
                <input type="email" class="form-control" placeholder="Enter your email">
            </div>
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Phone:</label>
            </div>
            <div class="col-4">
                <input type="tel" class="form-control" placeholder="Enter your phone number">
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Address:</label>
            </div>
            <div class="col-10">
                <input type="text" class="form-control" placeholder="Enter your address">
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Position:</label>
            </div>
            <div class="col-2">
                <select class="form-select">
                    <option value="0" selected>Select...</option>
                    <option value="1">Position 1</option>
                    <option value="2">Position 2</option>
                </select>
            </div>
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Department:</label>
            </div>
            <div class="col-2">
                <select class="form-select">
                    <option value="0" selected>Select...</option>
                    <option value="1">Position 1</option>
                    <option value="2">Position 2</option>
                </select>
            </div>
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Role:</label>
            </div>
            <div class="col-2">
                <select class="form-select">
                    <option value="0" selected>Select...</option>
                    <option value="1">Position 1</option>
                    <option value="2">Position 2</option>
                </select>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-2 d-flex align-items-center">
                <label class="fw-bold">Avatar:</label>
            </div>
            <div class="col-10">
                <input type="file" class="form-control">
            </div>
        </div>
    </form>
</div>
